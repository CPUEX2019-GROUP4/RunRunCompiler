module Back.Reg.InsertRestore where

import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.AdjacencyMap.Algorithm
import           Algebra.Graph.AdjacencyMap.Internal
import           Back.Block
import           Back.Reg.SmallBlock
import           Data.Map                             as M
import           Data.Maybe                           (fromJust)
import           Data.Sequence                        as SEQ
import           Data.Set                             as S
import           RunRun.Type                          as Type

type G = AdjacencyMap

mkGraph :: Map SN (Set SN) -> G SN
mkGraph = AM

forward :: G SN -> [SN]
forward = fromJust . topSort

type Set2 = (Set String, Set String)

type Def = Map SN Set2
type Free = Map SN Set2


-- |
-- 第一引数は, 1 つの 関数の smallblock 全体. SmallBlock.hs で生成.
--
-- 第二引数は, SmallBlock.hs で生成したグラフを mkGraph で変換したもの.
--
-- 第三引数は, 第二引数のグラフを topSort したもの.
collectDefFree :: Map SN SmallBlock -> G SN -> [SN] -> (Def, Free)
collectDefFree m g =
    Prelude.foldl (\ (def,free) sn -> let (d,f) = collect sn def in (d, M.insert sn f free))
      (M.empty, M.empty)
    where
      reverseG = transpose g
      collect :: SN -> Def -> (Def, Set2)
      collect sn acc =
        (M.insert sn d acc, f)
        where
          sb = m M.! sn
          instseq = sInst sb
          getparent = adjacencyMap reverseG M.! sn
          defparent = intersect2L (S.foldr (\ parent b -> acc M.! parent : b) [] getparent)
          (d,f) = instDef instseq (defparent, (S.empty, S.empty))


intersect2L :: [Set2] -> Set2
intersect2L = foldr1 intersect2

intersect2 :: Set2 -> Set2 -> Set2
intersect2 (a,b) (c,d) = (a `S.intersection` c, b `S.intersection` d)

instDef :: InstSeq -> (Set2, Set2) -> (Set2, Set2)
instDef Empty s = s
instDef (i :<| is) ((d1,d2), (f1,f2))
    | ((x,Type.Float), Inst _ ys zs) <- i = f (d1, S.insert x d2) ys zs
    | ((x,_         ), Inst _ ys zs) <- i = f (S.insert x d1, d2) ys zs
    where
      f d@(d1',d2') ys zs =
        (d, (S.union (S.fromList ys S.\\ d1') f1, S.union (S.fromList zs S.\\ d2') f2))








