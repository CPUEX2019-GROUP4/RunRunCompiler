module Back.Reg.SmallBlock where

import           Back.Block
import           Back.BlockGraph ()
import           Data.Foldable   as F (toList)
import           Data.Map        as M
import           Data.Sequence   as SEQ hiding (zip, zipWith)
import           Data.Set        as S
import           Prelude         hiding (last, tail)
import           RunRun.Type     as Type

type SN = (Int,Int)
-- ^ index of small block.
--
-- (blocknum, block内のでの番号)

data SmallBlockTail =
      CONT ![String] ![String]  !SN   -- どうして型の情報を捨てた!?!?!?
    | IF ![String] ![String] !SN !SN
    | RETURN

data SmallBlock =
    SmallBlock {
               sInst :: InstSeq, sBranch :: SmallBlockTail, sIsCall :: Bool}

-- type NontailCall = Map SN SN
-- -- ^ Formar -> Present
-- これは (b,s) |--> (b, s + 1) で必要十分


type ReturnValue =
    (Map SN SmallBlock, Map SN (Set SN), Map Int Int)
-- ^ blocknum |--> length of small block list
-- (smallblock の set, グラフ, 各ブロックが生成する smallblock の個数)

breakFuncSB :: FunctionData -> ReturnValue
breakFuncSB func =
    foldrWithKey f (M.empty, M.empty, M.empty) (blocks func)
    where
      f :: Int -> Block -> ReturnValue -> ReturnValue
      f bnum block = accumulate bnum $ breakBlockSBlock bnum block
      accumulate :: Int -> (Map SN SmallBlock, Map SN (Set SN), Int) -> ReturnValue -> ReturnValue
      accumulate b (n1, n2, i) (m1, m2, m3)  =
        (n1 `M.union` m1, n2 `M.union` m2, M.insert b i m3)

-- |
-- Blocknum -> Block -> ReturnValue
breakBlockSBlock :: Int -> Block -> (Map SN SmallBlock, Map SN (Set SN), Int)
breakBlockSBlock b block =
    (m, edge, number)
    where
      instseq = blockInst block
      tail = blockTailExp block
      branch = blockBranch block
      (lasttail, continueset) = mkBranch tail branch
      (m, number) = breakIntoSmallBlock b
            (instseq |> (("%r0", Type.Unit), Inst Nop [] [])) lasttail
      continuesb = S.map (\i->(i, 0)) continueset
      edge = M.singleton (b, number - 1) continuesb



mkBranch :: TailExp -> Branch -> (SmallBlockTail, Set Int)
mkBranch tail branch
    | If x <- tail, Two b1 b2 <- branch = f [] [x] b1 b2
    | IfCmp _ x y <- tail, Two b1 b2 <- branch = f [x,y] [] b1 b2
    | FIfCmp _ x y <- tail, Two b1 b2 <- branch = f [] [x,y] b1 b2
    | One b1 x <- branch = (CONT x (b1,0), S.singleton b1)
    | otherwise = (RETURN, S.empty)
    where
      f l1 l2 b1 b2 = (IF l1 l2 (b1,0) (b2,0), S.fromList [b1,b2])

-- | break blocks into small blocks.
--   small block includes up to one Call.
cutInstSeq :: InstSeq -> Seq (InstSeq, Bool)
cutInstSeq Empty = Empty
cutInstSeq xs =
    let (done,left) = breakl isCall xs in
      case left of
        Empty    -> SEQ.singleton (done, False)
        y :<| ys -> (done |> y, True) <| cutInstSeq ys
    -- cutInstSeq left |> done (done の先頭はあるなら call)

isCall :: (a, Inst) -> Bool
isCall (_, Inst (CallDir _) _ _) = True
isCall _                         = False

-- |
-- breakIntoSmallBlock
breakIntoSmallBlock :: Int -> InstSeq -> SmallBlockTail -> (Map SN SmallBlock, Int)
breakIntoSmallBlock b instseq tail =
    (smallblocks, number)
    where
      cut :: Seq (InstSeq, Bool)
      cut = cutInstSeq instseq
      (others :|> (last, _)) = cut
      number :: Int -- number of smallblocks
      number = SEQ.length cut
      f :: SN -> (InstSeq, Bool) -> (SN, SmallBlock)
      f (b',s) (instseq', bool) =
        ((b',s), SmallBlock { sInst = instseq', sBranch = CONT (callReturn instseq') (b',s+1), sIsCall = bool })
      smallBlockList :: [(SN, SmallBlock)]
      smallBlockList = zipWith f (zip (repeat b) [0..]) (F.toList others)
      lastSB :: SmallBlock
      lastSB = SmallBlock { sInst = last, sBranch = tail, sIsCall = False }
      smallblocks :: Map SN SmallBlock
      smallblocks = M.fromList (((b, number - 1), lastSB) : smallBlockList)

-- | might cause error
callReturn :: InstSeq -> String
callReturn (_ :|> ((x,_), Inst (CallDir _) _ _)) = x
