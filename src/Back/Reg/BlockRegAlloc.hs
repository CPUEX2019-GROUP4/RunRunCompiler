module Back.Reg.BlockRegAlloc where

import Prelude as P
import Data.Map as M
import Data.Set as S
import Data.Sequence as SEQ
import Data.List as L
import Data.Foldable as F
import Data.Array as A
import Data.Maybe (fromJust)
import           Algebra.Graph.AdjacencyMap.Algorithm
import           Algebra.Graph.AdjacencyMap.Internal
import           Back.Block
import           Back.Reg.Coloring                    as Coloring (regColor)
import           Back.Reg.InsertSave                  as InsertSave (insertSave)
import           Back.Reg.Interference                as Interference  (interferenceConn)
import           Back.Reg.Liveness                    as Liveness (liveConn, G)
import           Back.Reg.LivenessGlobal              as LivenessGlobal (liveness)
import           Back.Reg.SmallBlock                  as SmallBlock
import           Back.Reg.Stack                       as Stack
import RunRun.Type as Type


-- prepare :: RunRun (Map String FunctionData)
-- liveness :: Map String FunctionData -> RunRun (Map String (FunctionData, Map Int Live))
-- saveset :: Map String (FunctionData, Map Int Live) -> RunRun (Map String (FunctionData, Map Int Live, Map Int Store))
-- insertSave :: FunctionData -> Map Int Store -> FunctionData
-- breakFuncSB :: FunctionData -> ReturnValue
-- type ReturnValue =
--     (Map SN SmallBlock, Map SN (Set SN), Map Int Int)
-- insert restore
-- liveConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL
-- type ALL = (Adj,Adj,LiveInterval,Coalesce)
-- interferenceConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL -> X
-- regColor ::  X -> (Maybe (Map String String), Maybe (Map String String))


-- regAlloc :: Map String FunctionData -> RunRun (Map String FuncionData)
-- regAlloc prepare = do
--     livenessglobal <- LivenessGlobal.liveness prepare
--     saved <- Stack.saveset livenessglobal
--     where




-- regAllocFunc :: (FunctionData, Map Int Live, Map Int Store) -> FunctionData
-- regAllocFunc (func, _, store) =
--     func { blocks = sbTob mvinsertedsnsbmap (blocks func) }
--     where
--       funcWithSave = InsertSave.insertSave func store
--       (snsbmap, sngraphmap, blocklengthmap) = SmallBlock.breakFuncSB funcWithSave
--       sngraph = AM sngraphmap
--       reverseSngraph = transpose g
--       topsort = topSort sngraph
--       (restoredsnsbmap, clist) = insertRestore.insertRestore snsbmap sngraph topsort
--       cAllList = P.map (\ c -> (c, Liveness.liveConn restoredsnsbmap sngraph c)) clist
--       cXList   = P.map (\ (c,all) -> (c, Interference.interferenceConn restoredsnsbmap sngraph c all)) cAllList
--       (regsnsbmap, sncoloringmap) = convertReg restoredsnsbmap cXList
--       getargs :: SN -> Args
--       getargs sn
--         | hasEdge sn reverseSngraph = ([], [])
--         | (b,0) <- sn = (args func, fargs func)
--         | (b,n) <- sn, CONT ys zs _ <- sBranch (regsnsbmap M.! (b,n-1)) =
--                                             (ys, zs)
--         | otherwise = ([], []) -- should be an error
--       mvinsertedsnsnbmap =
--         M.mapWithKey
--             (\ sn sb -> insertMv (sInst (regsnsbmap M.! sn)) (getargs sn) (sncoloringmap M.! sn))
--             regsnsbmap


type Args = ([String], [String])


insertMv :: InstSeq -> Args -> Map String String -> InstSeq
insertMv instseq (ys, zs) m =
    let mvs = SEQ.reverse $ mvArgs (f ys) (f zs) in
    mvs >< instseq
    where
      f = P.map (m M.!)


shuffle :: Eq a => a -> [(a, a)] -> [(a, a)]
shuffle sw xys
    | ([],[]) <- tmp = []
    | ((x,y):xys'',[]) <- tmp
            = (y,sw) : (x,y) : shuffle sw (L.map (tmpfunc sw y) xys'')
    | (xys'', acyc) <- tmp = acyc ++ shuffle sw xys''
    where
        (_,xys') = L.partition (uncurry (==)) xys
        tmp = L.partition (\(_,y) -> mem_assoc y xys') xys'
        mem_assoc k = any (\(k',_) -> k'==k)
        tmpfunc sw' y ys@(y',z)
            | y == y' = (sw',z)
            | otherwise = ys
mvArgs :: [String] -> [String] -> InstSeq
mvArgs ys zs =
        let (_, yrs) = (\f -> P.foldl f (0,[]) ys)
                (\(i,yrs') y -> (i+1, (y,regs A.! i) : yrs'))
            instseq1 = P.foldr (\ (y,r) acc -> ((y, Type.Int), Inst Mv [r] []) <| acc)
                                Empty (shuffle reg_sw yrs)
            (_, zrs) = (\f -> P.foldl f (0,[]) zs)
                (\(d,zrs') z -> (d+1, (z,fregs A.! d) : zrs'))
            instseq2 = P.foldr (\ (z,fr) acc-> ((z, Type.Float), Inst FMv [] [fr]) <| acc)
                                instseq1 (shuffle reg_fsw zrs)
        in
        instseq2



convertReg :: Map SN SmallBlock -> [([SN], X)] -> (Map SN SmallBlock, Map SN (Map String String, Map String String))
convertReg snsb = -- cX =
    P.foldr f (M.empty, M.empty) --cX
    where
      f :: ([SN], X) -> (Map SN SmallBlock, Map SN (Map String String, Map String String)) -> (Map SN SmallBlock, Map SN (Map String String, Map String String))
      f (c, x) (m1,m2) =
        let (mic, mfc) = Coloring.regColor x
            (ic, fc) = (fromJust mic, fromJust mfc) in
        L.foldr (\ u (m1', m2')->
                      (M.insert u (convertSB (snsb M.! u) ic fc) m1', M.insert u (ic, fc) m2')) (m1, m2)
                      c

convertSB :: SmallBlock -> Map String String -> Map String String -> SmallBlock
convertSB sb m1 m2 =
    let newinst = F.foldr (\ inst acc -> f inst <| acc) Empty inst
        newbranch = g branch in
    SmallBlock { sInst = newinst, sBranch = newbranch, sIsCall = iscall }
    where
      inst = sInst sb
      branch = sBranch sb
      iscall = sIsCall sb
      f ((x,Type.Float), Inst i ys zs)
            = ((m2 M.! x, Type.Float), Inst i (P.map (m1 M.!) ys) (P.map (m2 M.!) zs))
      f ((x,t         ), Inst i ys zs)
            = ((m1 M.! x, t         ), Inst i (P.map (m1 M.!) ys) (P.map (m2 M.!) zs))
      g (CONT ys zs sn)
            = CONT (P.map (m1 M.!) ys) (P.map (m2 M.!) zs) sn
      g (IF ys zs sn1 sn2)
            = IF (P.map (m1 M.!) ys) (P.map (m2 M.!) zs) sn1 sn2
      g RETURN = RETURN




type X = (G String, G String, [String], [String], [[String]], [[String]])




