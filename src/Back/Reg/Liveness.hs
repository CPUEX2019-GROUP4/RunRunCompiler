{-|
干渉グラフ, 生存期間, Mv の coaleasce を収集.

干渉グラフは整数, 浮動小数のそれぞれについて
頂点から隣接点の Set への写像(Map)として表す.

生存期間の情報は, 頂点名から (生成位置, 死亡位置)
への写像で表現する.

coalesce は, Mv 命令で複製される頂点の組のリスト [(String, String)]
で表現.

各小ブロックに対してこれらを生成する.
-}
module Back.Reg.Liveness where

import           Back.Block
import           Back.BlockGraph
import           Back.Reg.SmallBlock
import           Prelude             hiding (tail)
import           RunRun.RunRun
import           RunRun.Type         as Type

import qualified Data.List           as L
import           Data.Map            as M
import           Data.Sequence       as SEQ
import           Data.Set            as S

import           Algebra.Graph.AdjacencyMap
import           Algebra.Graph.AdjacencyMap.Algorithm
import           Algebra.Graph.AdjacencyMap.Internal

type G = AdjacencyMap

type Adj = Map String (Set String)
type LiveInterval = Map String (Int, Int)
type Coalesce = [(String, String)]
type Set2 = (Set String, Set String)
type ALL = (Adj,Adj,LiveInterval,Coalesce)

type Live = Map SN Set2


allinit :: ALL
allinit = (M.empty, M.empty, M.empty, [])

-- |
-- topSorted SN (of a connected component) -> Graph -> ALL
liveConn :: Map SN SmallBlock -> G SN -> [SN] -> ALL
liveConn m g c =
    let (_, all) =
          Prelude.foldr (\ sn acc -> liveSB sn (m M.! sn) acc) (M.empty, allinit) (Prelude.reverse c)
    in all


liveSB :: SN -> SmallBlock -> (Live, ALL) -> (Live, ALL)
liveSB sn sb (live, (adjint, adjfloat, liveinterval, coalesce)) =
    (M.insert sn s' live, all)
    where
      inst = sInst sb
      tail = sBranch sb
      (ys,zs,s@(s1,s2)) = case tail of
                         RETURN -> ([], [], (S.empty, S.empty))
                         IF ys' zs' b1 b2 -> (ys', zs', (live M.! b1) `union2` (live M.! b2))
                         CONT ys' zs' b -> (ys', zs', live M.! b)
      -- CONT は考えなくていいと思う
      ys' = [ y | y <- ys, y `S.notMember` s1 ]
      zs' = [ z | z <- zs, z `S.notMember` s2 ]
      adjint'   = Prelude.foldr (`M.insert` s1) adjint   ys'
      adjfloat' = Prelude.foldr (`M.insert` s2) adjfloat zs'
      i = SEQ.length inst
      liveinterval'  = Prelude.foldr (\ y -> M.insert y (0,i)) liveinterval  ys'
      liveinterval'' = Prelude.foldr (\ z -> M.insert z (0,i)) liveinterval' zs'
      (s', all) = liveCheck inst (s, (adjint', adjfloat', liveinterval'', coalesce))


-- |
-- [Given] 命令列 InstSeq と その命令列実行後に "レジスタに" 生存していなければならない変数の集合
--
-- [Return] (Int干渉グラフ, Float干渉グラフ, Map 変数名 生存期間, Coalesce)
liveCheck :: InstSeq -> (Set2, ALL) -> (Set2, ALL)
liveCheck Empty a = a
liveCheck (xs :|> ((a,t), Inst e ys zs)) ((s1,s2), (adjint, adjfloat, live, coalesce)) =
    let (ys', zs') = f t (ys, zs)
        -- ys'', zs'' は最後の使用
        ys'' = [ y | y <- ys', y `S.notMember` s1 ]
        zs'' = [ z | z <- zs', z `S.notMember` s2 ]
        adjint'   = Prelude.foldr (`M.insert` s1') adjint   ys''
        adjfloat' = Prelude.foldr (`M.insert` s2') adjfloat zs''
        i = SEQ.length xs
        live'  = Prelude.foldr (\ y -> M.insert y (0,i)) live  ys''
        live'' = Prelude.foldr (\ z -> M.insert z (0,i)) live' zs''
        j = case M.lookup a live of
              Nothing    -> -1
              Just (_,n) -> n
        live''' = M.insert a (i,j) live'''
        coalesce' = case e of
                      Mv  | [y] <- ys -> (a,y) : coalesce
                      FMv | [z] <- zs -> (a,z) : coalesce
                      _               -> coalesce
    in
    liveCheck xs ((s1', s2'), (adjint', adjfloat', live''', coalesce'))
    where
      -- f :: Type で場合わけし, 生存変数を更新.
      f t (ys, zs)
        | Type.Float <- t = (L.nub ys, L.delete a $ L.nub zs)
        | otherwise       = (L.delete a $ L.nub ys, L.nub zs)
      (s1', s2') = case t of
                     Type.Float -> (s1, a `S.delete` s2)
                     _          -> (a `S.delete` s1, s2)

union2 :: Ord a => (Set a, Set a) -> (Set a, Set a) -> (Set a, Set a)
union2 (a,b) (c,d) = (a `S.union` c, b `S.union` d)



