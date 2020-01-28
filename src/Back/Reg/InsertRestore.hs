module Back.Reg.InsertRestore where

import           Algebra.Graph.AdjacencyMap as Galg
import           Algebra.Graph.AdjacencyMap.Algorithm
import           Algebra.Graph.AdjacencyMap.Internal
import           Back.Block
import           Back.Reg.SmallBlock
import           Data.Map                             as M
import           Data.Maybe                           (fromJust)
import           Data.Sequence                        as SEQ
import           Data.Set                             as S
import           RunRun.Type                          as Type
import Data.List as L
import Control.Monad.State

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
      reverseG = Galg.transpose g
      collect :: SN -> Def -> (Def, Set2)
      collect sn acc =
        (M.insert sn d acc, f)
        where
          sb = m M.! sn
          instseq = sInst sb
          getparent = adjacencyMap reverseG M.! sn
          defparent = intersect2L (S.foldr (\ parent b -> acc M.! parent : b) [] getparent)
          (d,f) = instDef instseq (defparent, (S.empty, S.empty))


union2L :: [Set2] -> Set2
union2L = foldr1 intersect2
union2 :: Set2 -> Set2 -> Set2
union2 (a,b) (c,d) = (a `S.union` c, b `S.union` d)

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



data Ref = Ref {
         graphG :: G SN,
         graphD :: G SN,
         listL:: [SN],
         mapFree :: Map SN Set2,
         mapDef :: Map SN Set2,
         set2S :: SetSN,
         set2f :: Set2,
         components :: [[SN]],
         revH :: G SN,
         xsets :: Map String (Set SN)
         }
type St = State Ref


searchTop :: G SN -> Map SN Set2 -> Map SN Set2 -> St ()
searchTop d free def = do
    let l = topSort d
        g = symmetricClosure d
    (\a -> put (a {graphG = g,
                   graphD = d,
                   listL = l,
                   mapFree = free,
                   mapDef = def}))  =<< get
    forConn


forConn :: St ()
forConn = do
    l <- gets listL
    when (l /= []) (do
           let u = L.head l
           c <- gets (reachable u . graphG)
           h <- gets (induce (`L.elem` c) . graphD)
           rh <- Galg.transpose h
           let l' = [ x | x <- l, x `L.notElem` c ]
           free <- gets mapFree
           let f = union2L [free M.! v | v <- c ]
           cs <- gets components
           \a -> put (a { listL = l',
                          set2f = f,
                          revH = rh,
                          components = c : cs})
           eachx
           forConn)

eachx :: St ()
eachx = do
    (f1,f2) <- gets set2f
    unless (S.null f) (do
          free <- gets mapFree
          -- int
          let (x, newf) = S.deleteFindMin f1
              s = keysSet (M.filter (x `S.member`) free)
          l <- gets listL
          let revl = L.reverse l
          (\ a -> put (a {set2f = newf, set2S = s}) =<< get)
          pathsearch x revl M.empty
          m <- gets xsets
          s <- gets set2S
          M.insert x s m
          (\ a -> put (a {xsets = m}) =<< get))
          -- float
          let (x, newf) = S.deleteFindMin f2
              s = keysSet (M.filter (x `S.member`) free)
          l <- gets listL
          let revl = L.reverse l
          (\ a -> put (a {set2f = newf, set2S = s}) =<< get)
          pathsearch x revl M.empty
          m <- gets xsets
          s <- gets set2S
          M.insert x s m
          (\ a -> put (a {xsets = m}) =<< get))

pathsearch :: String -> [SN] -> Map SN String -> St ()
pathsearch x l m = do
    s <- gets set2S
    revh <- gets revH
    case s of
      _ | [] <- l -> return ()
        | v:vs <- l, velems, Just u <- maybeu -> changes u x
        | v:vs <- l, Just u <- maybeu -> writeparents u v
        | v:vs <- l, velems -> writeparents v v
        | v:vs <- l -> pathsearch x vs m
        where
          velems = v `S.member` s
          maybeu = M.lookup v m
          writeparents u v = do -- u を v の親に.
                let newm = S.foldr (\ p -> insertWith (const id) p u) m (postSet v revH)
                pathsearch x vs newm

changes :: SN -> String -> St ()
changes v x = do
    s <- gets set2S
    parents <- gets (postSet v . revH)
    def <- gets mapDef
    let s' = S.foldr (insertif def) (S.delete v s) parents
    (\ a -> put (a { set2S = s' })) =<< get
    where
      insertif def p s
        | S.notMember x (def M.! p) = S.insert p s
        | otherwise = s
