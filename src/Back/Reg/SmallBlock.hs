module Back.Reg.SmallBlock where

import           Back.Block
import           Back.BlockGraph
import           Data.Map        as M
import           Data.Sequence   as SEQ

-- | break blocks into small blocks.
--   small block includes up to one Call.
breakIntoSmallBlock :: InstSeq -> Seq (InstSeq, Bool)
breakIntoSmallBlock Empty = Empty
breakIntoSmallBlock xs =
    let (done,left) = breakl isCall xs in
      case left of
        Empty    -> SEQ.singleton (done, False)
        x :<| xs -> (done |> x, True) <| breakIntoSmallBlock xs
    -- breakIntoSmallBlock left |> done

isCall :: (a, Inst) -> Bool
isCall (_, Inst (CallDir _) _ _) = True
isCall _                         = False



type Args = ([String] , [String])

-- | collect arguments of functions which might be called
--
-- Map Blocknum (Seq (SmallBlockInstSeq, isCall), LastSmallBlock'sArgs)
collectArgs :: FunctionData -> Map Int (Seq (InstSeq, Bool), [Args])
collectArgs func =
    Prelude.foldl getargs M.empty (Prelude.reverse blist)
    where
      bmap = blocks func
      blist = line func
      getadj = adjacentList . blockGraph $ func -- Int -> [Int]
      getInstSeq blocknum = blockInst $ bmap M.! blocknum
      f n = M.insert n (breakIntoSmallBlock . getInstSeq $ n)
      -- smalls :: Map Int (Seq (InstSeq, Bool))
      smalls = Prelude.foldr f M.empty blist
      getargs :: Map Int (Seq (InstSeq, Bool), [Args]) -> Int -> Map Int (Seq (InstSeq, Bool), [Args])
      getargs m n =
        let instseq = smalls M.! n in
        case instseq of
          (_ :|> (_ :|> (_, Inst _ ys zs), True)) -> M.insert n (instseq, [(ys,zs)]) m
          _                                  -> M.insert n (instseq, args) m
          -- Empty                       -> args
          -- (_ :|> (_,False))           -> args
        where
          adjs = getadj n -- [Int]
          args = Prelude.concatMap (returnArgs . (m M.!)) adjs


returnArgs :: (Seq (InstSeq, Bool), [Args]) -> [Args]
returnArgs ((x :<| _, True) :<| _, a) = args x
    where
      args (_, Inst (CallDir _) ys zs) = [(ys,zs)]
      args _                           = a
returnArgs (_, a) = a
-- returnArgs ((_, False) :<| _,a) = a
-- returnArgs ((Empty, True), a) = a
-- returnArgs ((_, True), a)) = args a

