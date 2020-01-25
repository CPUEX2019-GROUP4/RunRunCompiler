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
import           RunRun.RunRun
import           RunRun.Type     as Type

import           Data.Map        as M
import           Data.Sequence   as SEQ
import           Data.Set        as S
import qualified Data.List       as L

type Adj = Map String (Set String)
type LiveInterval = Map String (Int, Int)
type Coalesce = [(String, String)]
type RSet = (Set String, Set String)
type ALL = (Adj,Adj,LiveInterval,Coalesce)

-- |
-- [Given] 命令列 InstSeq と その命令列実行後に "レジスタに" 生存していなければならない変数の集合
--
-- [Return] (Int干渉グラフ, Float干渉グラフ, Map 変数名 生存期間, Coalesce)
liveCheck :: InstSeq -> RSet -> ALL -> ALL
liveCheck Empty _ a = a
liveCheck (xs :|> ((a,t), Inst e ys zs)) (s1,s2) (adjint, adjfloat, live, coalesce) =
    let (ys', zs') = f t (ys, zs)
        ys'' = [ y | y <- ys', y `S.notMember` s1 ]
        zs'' = [ z | z <- zs', z `S.notMember` s2 ]
        adjint'   = Prelude.foldr (`M.insert` s1) adjint   ys''
        adjfloat' = Prelude.foldr (`M.insert` s2) adjfloat zs''
        i = SEQ.length xs
        live'  = Prelude.foldr (\ y -> M.insert y (0,i)) live  ys''
        live'' = Prelude.foldr (\ y -> M.insert y (0,i)) live' zs''
        j = case M.lookup a live of
              Nothing -> -1
              Just (_,n) -> n
        live''' = M.insert a (i,j) live'''
        coalesce' = case e of
                      Mv  | [y] <- ys -> (a,y) : coalesce
                      FMv | [z] <- zs -> (a,z) : coalesce
                      _               -> coalesce
    in
    (adjint', adjfloat', live''', coalesce')
    where
      f t (ys, zs)
        | Type.Float <- t = (L.nub ys, L.delete a $ L.nub zs)
        | otherwise       = (L.delete a $ L.nub ys, L.nub zs)







