module Back.Reg.Coloring where

import Back.Block
import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.Export.Dot
import           Data.Map                   as M
import           Data.Set                   as S
import           Data.List                  as L
import           Data.Maybe (catMaybes)
import Control.Monad (foldM)

-- AdjacencyMap a
type G = AdjacencyMap
-- data Reg a = Alloc [a] | Spill a
type Stack a = [a]
type X = (G String, G String, [String], [String], [[String]], [[String]])
-- ^ int/float graph, int/float 合流変数, int/float 関数引数



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


color :: (Eq color, Ord a) => Int -> G a -> [color] -> Map a color -> a -> Maybe (Map a color)
color k g colorset colored x = do
    c <- L.find (`notElem` (catMaybes $ S.foldl (\ acc v -> M.lookup v colored : acc)
                [] (postSet x g))) colorset
    return $ M.insert x c colored

colorGraph :: (Eq color, Ord a) => Int -> G a -> [color] -> Map a color -> Stack a -> Maybe (Map a color)
colorGraph k g colorset = foldM (color k g colorset)

icoloredInit :: Map String String
icoloredInit = M.fromList [("%r1", "%r1")]
fcoloredInit :: Map String String
fcoloredInit = M.fromList [("%f0", "%f0")]


-- |
-- is not resistant to spilling yet.
regColor ::  X -> (Maybe (Map String String), Maybe (Map String String))
regColor (ig, fg, imerge, fmerge, xss, yss) =
    let (iSpill, iStack) = deleteGood regs_len ig
        i = colorGraph regs_len ig allregs icoloredInit iStack
        (fSpill, fStack) = deleteGood fregs_len fg
        f = colorGraph fregs_len fg allfregs fcoloredInit fStack in
    (i, f)


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

