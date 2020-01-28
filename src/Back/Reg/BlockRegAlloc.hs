module Back.Reg.BlockRegAlloc where

import Back.Block
import Back.Reg.SmallBlock
-- import 



-- prepare :: RunRun (Map String FunctionData)
-- liveness :: Map String FunctionData -> RunRun (Map String (FunctionData, Map Int Live))
-- saveset :: Map String (FunctionData, Map Int Live) -> RunRun (Map String (FunctionData, Map Int Live, Map Int Store))
-- mkSave :: FunctionData -> Map Int Store -> Map Int Save
-- breakFuncSB :: FunctionData -> ReturnValue
-- type ReturnValue =
--     (Map SN SmallBlock, Map SN (Set SN), Map Int Int)
-- insert restore
-- liveConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL
-- type ALL = (Adj,Adj,LiveInterval,Coalesce)
-- interferenceConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL -> X
-- regColor ::  X -> (Maybe (Map String String), Maybe (Map String String))
