module Back.Reg.Coloring where

import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.Export.Dot
import           Data.Map                   as M
import           Data.Set                   as S
-- AdjacencyMap a
type G = AdjacencyMap

-- data Reg a = Alloc [a] | Spill a

type Stack a = [a]

-- | O(n)
-- good v := d(v) < k - 2 (heuristic)
goodVirteces :: Ord a => Int -> G a -> [a]
goodVirteces k g =
    let mapaseta = adjacencyMap g in
    M.foldrWithKey (\ key s acc -> if S.size s < k - 2 then key : acc else acc) [] mapaseta

-- | return spill_list and stack (reversed)
--
-- O(n^2 log(n))
deleteGood :: Ord a => Int -> G a -> ([a], Stack a)
deleteGood k g =
    case goodVirteces k g of
      [] | isEmpty g -> ([], [])
         | otherwise -> -- consider some better algorithm !!
                        let v = fst . M.elemAt 0 $ adjacencyMap g
                            (sp,st) = deleteGood k (removeVertex v g) in
                            (v:sp, v:st)
      xs -> let (sp, st) = deleteGood k (Prelude.foldr removeVertex g xs)
                    in (sp, xs ++ st)


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

