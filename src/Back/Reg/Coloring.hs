module Back.Reg.Coloring where

import Algebra.Graph.AdjacencyMap
import Data.Set as S
import Data.Map as M
import Algebra.Graph.Export.Dot
-- AdjacencyMap a
type G = AdjacencyMap

data Reg a = Alloc [a] | Spill a

type Stack a = [a]


goodVirteces :: Ord a => Int -> G a -> [a]
goodVirteces k g =
    let mapaseta = adjacencyMap g in
    M.foldrWithKey (\ key s acc -> if S.size s <= k then key : acc else acc) [] mapaseta

deleteGood :: Ord a => Int -> G a -> Stack a -> Reg a
deleteGood k g stack =
    case goodVirteces k g of
      [] | isEmpty g -> Alloc stack
         | otherwise -> -- consider some better algorithm !!
                        Spill $ fst . M.elemAt 0 $ adjacencyMap g
      xs -> deleteGood k (Prelude.foldr removeVertex g xs) (xs ++ stack)


----------------------------------
--  graphviz
----------------------------------
style :: Style String String
style = Style
    { graphName               = "Interference Graph"
    , preamble                = ["  // The Graph to be Colored", ""]
    , graphAttributes         = ["label" := "Example", "labelloc" := "top"]
    , defaultVertexAttributes = ["shape" := "circle"]
    , defaultEdgeAttributes   = mempty
    , vertexName              = id
    , vertexAttributes        = const ["color" := "blue"]
    , edgeAttributes          = const $ const ["style" := "dashed"] }

printGraph :: G String -> String
printGraph = export style

