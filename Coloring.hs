module Coloring where

import Algebra.Graph.AdjacencyMap
import Data.Set as S
import Data.Map as M
import Algebra.Graph.Export.Dot
-- AdjacencyMap a
type G = AdjacencyMap

data Reg a = Alloc (G a, [a]) | Spill a

type Stack = [a]

goodVirteces :: Int -> G a -> [a]
goodVirteces k g =
    let mapaseta = adjacencyMap g in
    M.foldrWithKey (\ k s acc -> if S.size s <= k then k : acc else acc) mapaseta

deleteGood :: Int -> G a -> Stack -> Reg a
deleteGood k g stack =
    case goodVirteces k g of
      [] | isEmpty g ->
         | otherwise -> -- consider some better algorithm !!
      xs -> deleteGood k (Prelude.foldl removeVertex g xs) (xs ++ stack)


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
    , vertexName              = \x   -> x
    , vertexAttributes        = \x   -> ["color" := "blue" | x]
    , edgeAttributes          = \x y -> ["style" := "dashed" | (x, y) ] }

printGraph :: Graph String -> String
printGraph = export style

