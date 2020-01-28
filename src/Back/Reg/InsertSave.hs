module Back.Reg.InsertSave where

import           Back.Block
import           Back.BlockGraph
import           Data.Map        as M
import           Data.Sequence   as SEQ
import           Data.Set        as S
import           RunRun.Type     as Type


type Store = (Set String, Set String)
type Save  = (Set String, Set String)



mkSave :: FunctionData -> Map Int Store -> Map Int Save
mkSave func store =
    M.mapWithKey (\ k _ -> saveu k) store
    where
      l :: Int -> [Int]
      l = adjacentList (blockReverseGraph func)
      saveu :: Int -> Save
      saveu b = store M.! b `del2` intersectionList (Prelude.map (store M.!) (l b)) (S.empty, S.empty)


del2 :: Store -> Store -> Store
del2 (s1,s2) (s3,s4) = (s1 S.\\ s3, s2 S.\\ s4)

intersectionList :: Ord a => [(Set a, Set a)] -> (Set a, Set a) -> (Set a, Set a)
intersectionList [] u = u
intersectionList ss _ = foldr1 intersection2 ss

intersection2 :: Ord a => (Set a, Set a) -> (Set a, Set a) -> (Set a, Set a)
intersection2 (a,b) (c,d) = (a `S.intersection` c, b `S.intersection` d)


insertSave :: Set String -> InstSeq -> InstSeq
insertSave s (a@((x,t), _) :<| xs)
    | Type.Float <- t, ismem = a <| (("%r0", Type.Unit), Inst (Save x) [] [x]) <| insertSave s xs
    | Type.Unit  <- t, ismem = a <| insertSave s xs
    | ismem                  = a <| (("%r0", Type.Unit), Inst (Save x) [x] []) <| insertSave s xs
    | otherwise      = a <| insertSave s xs
    where
      ismem = x `S.member` s
insertSave _ Empty = Empty
