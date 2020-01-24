module Back.Reg.SmallBlock where

import Back.Block
import Data.Sequence

breakIntoSmallBlock :: InstSeq -> Seq InstSeq
breakIntoSmallBlock xs =
    let (left,done) = spanr isCall xs in
    breakIntoSmallBlock left |> done

isCall :: (a, Inst) -> Bool
isCall (_, Inst (CallDir _) _ _) = True
isCall _ = False
