module Back.Reg.BlockRegAlloc where

import Back.Block
import Back.Reg.LivenessGlobal as LivenessGlobal
import Back.Reg.Stack as Stack
import Back.Reg.InsertSave as InsertSave
import Back.Reg.SmallBlock as SmallBlock
import Back.Reg.Liveness as Liveness
import Back.Reg.Interference as Interference
import Back.Reg.Coloring as Coloring
import Algebra.Graph.AdjacencyMap.Internal
import Algebra.Graph.AdjacencyMap.Algorithm



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


regAlloc :: Map String FunctionData -> RunRun (Map String FuncionData)
regAlloc prepare = do
    livenessglobal <- LivenessGlobal.liveness prepare
    saved <- Stack.saveset livenessglobal
    where




regAllocFunc :: (FunctionData, Map Int Live, Map Int Store) -> FunctionData
regAllocFunc (func, _, store) =
    func { blocks = sbTob mvinsertedsnsbmap (blocks func) }
    where
      funcWithSave = InsertSave.insertSave func store
      (snsbmap, sngraphmap, blocklengthmap) = SmallBlock.breakFuncSB funcWithSave
      sngraph = AM sngraphmap
      reverseSngraph = transpose g
      topsort = topSort sngraph
      (restoredsnsbmap, clist) = insertRestore.insertRestore snsbmap sngraph topsort
      cAllList = Prelude.map (\ c -> (c, Liveness.liveConn restoredsnsbmap sngraph c)) clist
      cXList   = Prelude.map (\ (c,all) -> (c, Interference.interferenceConn restoredsnsbmap sngraph c all)) cAllList
      (regsnsbmap, sncoloringmap) = convertReg restoredsnsbmap cXList
      getargs :: SN -> Args
      getargs sn
        | hasEdge sn reverseSngraph = ([], [])
        | (b,0) <- sn = (args func, fargs func)
        | (b,n) <- sn, Cont ys zs _ <- sBranch (regsnsbmap M.! (b,n-1)) =
                                            (ys, zs)
        | otherwise = ([], []) -- should be an error
      mvinsertedsnsnbmap =
        M.mapWithKey
            (\ sn sb -> insertMv (sInst (regsnsbmap M.! sn)) (getargs sn) (sncoloringmap M.! sn))
            regsnsbmap


type Args = ([String], [String])


insertMv :: InstSeq -> Args -> Map String String -> InstSeq
insertMv instseq (ys, zs) m =
    let mvs = reverse $ mvArgs (f ys) (f zs) in
    mvs >< instseq
    where
      f xs = Prelude.map (m M.!) xs


shuffle :: Eq a => a -> [(a, a)] -> [(a, a)]
shuffle sw xys
    | ([],[]) <- tmp = []
    | ((x,y):xys'',[]) <- tmp
            = (y,sw) : (x,y) : shuffle sw (map (tmpfunc sw y) xys'')
    | (xys'', acyc) <- tmp = acyc ++ shuffle sw xys''
    where
        (_,xys') = partition (uncurry (==)) xys
        tmp = partition (\(_,y) -> mem_assoc y xys') xys'
        mem_assoc k = any (\(k',_) -> k'==k)
        tmpfunc sw' y ys@(y',z)
            | y == y' = (sw',z)
            | otherwise = ys
mvArgs :: [String] -> [String] -> InstSeq
mvArgs ys zs =
        let (_, yrs) = (\f -> foldl f (0,[]) ys)
                (\(i,yrs') y -> (i+1, (y,regs ! i) : yrs'))
            instseq1 = Prelude.foldr (\ (y,r) acc -> ((y, Type.Int), Inst Mv [r] []) <| acc)
                                Empty (shuffle reg_sw yrs)
            (_, zrs) = (\f -> foldl f (0,[]) zs)
                (\(d,zrs') z -> (d+1, (z,fregs ! d) : zrs'))
            instseq2 = Prelude.foldr (\ (z,fr) acc-> ((z, Type.Float), Inst FMv [] [fr]) <| acc)
                                instseq1 (shuffle reg_fsw zrs)
        in
        instseq2



convertReg :: Map SN SmallBlock -> [([SN], X)] -> (Map SN SmallBlock, Map SN (Map String String, Map String String))
convertReg snsb cX =
    Prelude.foldr f (M.empty, M.empty) cX
    where
      f :: ([SN], X) -> (Map SN SmallBlock, Map SN (Map String String)) -> (Map SN SmallBlock, Map SN (Map String String))
      f (c, x) m1 m2 =
        let (mic, mfc) = Coloring.regColor x
            (ic, fc) = (fromJust mic, fromJust mfc) in
        Prelude.foldr (\ u ->
                      (M.insert u (convertSB (snsb M.! u) ic fc) m1, M.insert u (ic, fc) m2))
                      c

convertSB :: SmallBlock -> Map String String -> Map String String -> SmallBlock
convertSB sb m1 m2 =
    let newinst = SEQ.map f inst
        newbranch = g branch in
    SmallBlock { sInst = newinst, sBranch = newbranch, sIsCall = iscall }
    where
      inst = sInst sb
      branch = sBranch sb
      iscall = sIsCall sb
      f ((x,Type.Float), Inst i ys zs)
            = ((m2 M.! x, Type.Float), Inst i (Prelude.map (m1 M.!) ys) (Prelude.map (m2 M.!) zs))
      f ((x,t         ), Inst i ys zs)
            = ((m1 M.! x, t         ), Inst i (Prelude.map (m1 M.!) ys) (Prelude.map (m2 M.!) zs))
      g (Cont ys zs sn) =
            = Cont (Prelude.map (m1 M.!) ys) (Prelude.map (m2 M.!) zs) sn
      g (If ys zs sn1 sn2) =
            = If (Prelude.map (m1 M.!) ys) (Prelude.map (m2 M.!) zs) sn1 sn2
      g RETURN = RETURN




type X = (G String, G String, [String], [String], [[String]], [[String]])




