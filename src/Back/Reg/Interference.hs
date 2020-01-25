module Back.Reg.Interference where

import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.AdjacencyMap.Internal
-- import           Algebra.Graph
import           Back.Block
import           Data.Map                            as M
import           Data.Set                            as S

-- type Live = Seq (Set String, Set String)

type G = AdjacencyMap

mkGraph :: Ord a => Map a (Set a) -> G a
mkGraph m =
    let dg = AM m in
    symmetricClosure dg
