module Back.Reg.Liveness where

import           Back.Block
import           Back.BlockGraph
import           RunRun.RunRun
import           RunRun.Type

import           Data.Map        as M
import           Data.Sequence   as SEQ
import           Data.Set        as S


-- data Block = Block {
--            -- blockNum :: Int,
--            -- blockmother :: [Int],
--            blockInst    :: InstSeq,
--            blockTailExp :: TailExp,
--            blockBranch  :: Branch,
--            blockStack   :: (S.Set String, S.Set String)}
--            deriving(Eq)
-- data FunctionData = FunctionData {
--                   blocks            :: M.Map Int Block,
--                   blockGraph        :: G.Graph,
--                   blockReverseGraph :: G.Graph,
--                   line              :: [Int],
--                   args              :: ![String],
--                   fargs             :: ![String],
--                   ret               :: !Type,
--                   allStack          :: [String]
--                   }
-- type InstSeq = SQ.Seq ((String, Type), Inst)


type Live = Seq (Set String, Set String)

-- | 関数呼び出しの有無に関係なく, 同時に resister または stack
--   に存在せねばならぬ変数の集合を各命令ごとに計算する.
liveness :: Map String FunctionData -> RunRun (Map String (FunctionData, Map Int Live))
liveness m = return $ M.map (\ func -> (func, liveFunc func)) m

liveFunc :: FunctionData -> Map Int Live
liveFunc func =
    Prelude.foldl insertToMap M.empty l
    where
      l = Prelude.reverse . line $ func
      -- follows :: Int -> [Int]
      follows = adjacentList $ blockGraph func
      -- block ごとの関数
      -- gatherset :: [Int] -> Map Int Live -> (S,S)
      gatherSet xs accmap = Prelude.foldl (\ s12 n -> union2 (accmap M.! n) s12) (S.empty, S.empty) xs
      -- union2 :: (S,S) -> Live -> (S,S)
      union2 ((a1,a2) :<| _) (b1, b2) = (a1 `S.union` b1, a2 `S.union` b2)
      union2 Empty (b1,b2)            = (b1, b2)
      -- insertToMap -> Map Int Live -> Map Int Live
      insertToMap accmap n =
        let s = gatherSet (follows n) accmap in
        M.insert n (liveBlock (blocks func M.! n) s) accmap


liveBlock:: Block -> (Set String, Set String) -> Live
liveBlock block s12@(s1,s2) =
    let s12' = case blockTailExp block of
          -- Call
          If x -> (S.insert x s1, s2)
          IfCmp _ x y -> (S.insert x $ S.insert y s1, s2)
          FIfCmp _ x y -> (s1, S.insert x $ S.insert y s2)
          _ -> s12
    in
    liveSeq (blockInst block) s12' |> s12'

liveSeq :: InstSeq -> (Set String, Set String) -> Live
liveSeq Empty s12 = SEQ.singleton s12
liveSeq (xs :|> x) s12 =
    let s12' = live x s12 in
    liveSeq xs s12' |> s12'

live :: ((String, Type), Inst) -> (Set String, Set String) -> (Set String, Set String)
live ((x, Float), Inst _ ys zs) (s1,s2) = (S.fromList ys `S.union` s1, S.delete x $ S.fromList zs `S.union` s2)
live ((x, _    ), Inst _ ys zs) (s1,s2) = (S.delete x $ S.fromList ys `S.union` s1, S.fromList zs `S.union` s2)






