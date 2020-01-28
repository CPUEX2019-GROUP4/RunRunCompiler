module Back.Reg.Interference where

import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.AdjacencyMap.Internal
-- import           Algebra.Graph
import           Back.Block
import           Back.Reg.SmallBlock
import           Data.Map                            as M
import           Data.Sequence                       as SEQ
import           Data.Set                            as S


type Adj = Map String (Set String)
type LiveInterval = Map String (Int, Int)
type Coalesce = [(String, String)]
type Set2 = (Set String, Set String)
type ALL = (Adj,Adj,LiveInterval,Coalesce)

type G = AdjacencyMap

type X = (G String, G String, [String], [String], [[String]], [[String]])
-- ^ int/float graph, int/float 合流変数, int/float 関数引数

mkGraph :: Ord a => Map a (Set a) -> G a
mkGraph = symmetricClosure . AM

removeVertices :: Ord a => [a] -> G a -> G a
removeVertices = flip $ Prelude.foldr removeVertex


-- |
-- save, restore
-- が挿入済みのプログラムに対して割付をする為の情報を生成する.
--
interferenceConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL -> X
interferenceConn m g c (adjint, adjfloat, live, coalesce) =
    let igraph = mkGraph adjint
        fgraph = mkGraph adjfloat
        (imerge, fmerge) = Prelude.foldr (append2 . merging) ([],[]) c
        (iargs,  fargs ) = Prelude.foldr (append2 . args) ([],[]) c
    in
    (igraph, fgraph, imerge, fmerge, iargs, fargs)
    where
      merging (_,0) = ([], [])
      merging (b,n) = let CONT ys zs _ = sBranch (m M.! (b,n-1)) in (ys,zs)
      args sn =
        let sb = m M.! sn
            inst = sInst sb in
        case sIsCall sb of
          False -> ([], [])
          True | Empty   <- inst             -> ([],[])
               | (_:|> (_, Inst _ ys zs)) <- inst -> ([ys],[zs])
      append2 (a,b) (c,d) = (a++c, b++d)


