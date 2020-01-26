module Back.Reg.Stack where

import           Back.Block
import           Back.BlockGraph
import           Data.Map      as M
import           Data.Sequence as SEQ
import           Data.Set      as S
import           RunRun.RunRun

type Live = Seq (Set String, Set String)
type Store = (Set String, Set String)

-- | collect variables that are to be saved.
saveset :: Map String (FunctionData, Map Int Live) -> RunRun (Map String (FunctionData, Map Int Live, Map Int Store))
saveset m =
    return $ M.map (\ (f,x) -> (f,x,saveFunc f x)) m

saveFunc :: FunctionData -> Map Int Live -> Map Int Store
saveFunc func livemap =
    -- Prelude.foldr g (S.empty, S.empty) (line func)
    Prelude.foldl (\ acc n -> M.insert n (storefold acc n) acc) M.empty (Prelude.reverse . line $ func)
    where
      -- f n = saveBlock (blocks func M.! n) (livemap M.! n)
      -- g n s = f n `union2` s
      graph = blockGraph func
      -- l :: blocknum -> adjlist
      l = adjacentList graph
      childlive :: Int -> [(Set String, Set String)]
      childlive u = Prelude.map (blockFirstLive livemap) (l u)
      childstore :: Int -> Map Int (Set String, Set String) -> [(Set String, Set String)]
      childstore u store = Prelude.map (store M.!) (l u)
      s1 :: Int -> (Set String, Set String)
      s1 n = saveBlock (blocks func M.! n) (livemap M.! n)
      s2 :: Int -> (Set String, Set String)
      s2 = unionList . childlive
      s3 :: Int -> Map Int (Set String, Set String) -> (Set String, Set String)
      s3 u store = intersectionList (childstore u store) (S.empty, S.empty)
      s4 :: Int -> (Set String, Set String)
      s4 = lastSeq . (livemap M.!)
      storefold :: Map Int (Set String, Set String) -> Int -> (Set String, Set String)
      storefold acc n =
        s1 n `union2` (s2 n `intersection2` (s3 n acc `intersection2` s4 n))

unionList :: Ord a => [(Set a, Set a)] -> (Set a, Set a)
unionList [] = (S.empty, S.empty)
unoinList (s:ss) = s `union2` unionList ss

intersectionList :: Ord a => [(Set a, Set a)] -> (Set a, Set a) -> (Set a, Set a)
intersectionList [] u = u
intersectionList ss _ = foldr1 intersection2 ss

blockFirstLive :: Map Int Live -> Int -> (Set String, Set String)
blockFirstLive m blocknum =
    headSeq $ m M.! blocknum

headSeq :: Live -> (Set String, Set String)
headSeq (x :<| xs) = x
headSeq Empty      = (S.empty, S.empty)

lastSeq :: Live -> (Set String, Set String)
lastSeq (xs :|> x) = x
lastSeq Empty      = (S.empty, S.empty)

-- | can not handle with tailCall yet
-- block -> live ->
saveBlock:: Block -> Live -> (Set String, Set String)
saveBlock block = saveSeq (blockInst block)


saveSeq :: InstSeq -> Live -> (Set String, Set String)
saveSeq Empty _               = (S.empty, S.empty)
saveSeq (x :<| xs) (y :<| ys) = save x y `union2` saveSeq xs ys
saveSeq _ _                   = (S.empty, S.empty) -- should be an error

save :: ((String, a), Inst) -> Store -> Store
save ((_,_), Inst (CallDir _) _ _) s = s
save _ s = (S.empty, S.empty)


-------------------
-- util
-------------------
union2 :: Ord a => (Set a, Set a) -> (Set a, Set a) -> (Set a, Set a)
union2 (a,b) (c,d) = (a `S.union` c, b `S.union` d)
intersection2 :: Ord a => (Set a, Set a) -> (Set a, Set a) -> (Set a, Set a)
intersection2 (a,b) (c,d) = (a `S.intersection` c, b `S.intersection` d)
