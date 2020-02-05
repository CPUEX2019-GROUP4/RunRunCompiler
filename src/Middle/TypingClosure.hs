module Middle.TypingClosure where

import           Control.Monad.State
import           Data.Map            as M hiding (foldr, map)
import           Middle.Closure_Type as C hiding (C (Array, Float, Int, Tuple, Unit, Var))
import qualified Middle.Closure_Type as C
import           RunRun.RunRun
import           RunRun.Type         as Ty
import           Text.Printf         (printf)


-- |
-- subst, tyvar, tyenv は型が同じだから,
-- Front.Typing を使いまわそう！
--
-- maloc されて自由変数を int に置いた箇所は,
--
-- let (a, Array Int) (Int 30000)
--
-- とかになってるから, それを信じよう!


clsTyping :: Prog -> RunRun Prog
clsTyping (Prog e) = do
    fs <- gets toplevel
    (\a -> put (a {clsSubst = M.empty})) =<< get
    let initmap = initTyEnv fs
    mapM_ (`inferFunc` initmap) fs
    infer e initmap
    return (Prog e)


initTyEnv :: [Fundef] -> Map String Type
initTyEnv =
    foldr (\ f accmap -> let (L fname, t) = name f in M.insert fname t accmap) (M.singleton "%r0" Int)


inferFunc :: Fundef -> Map String Type -> RunRun ()
inferFunc f env = do
    -- eprint f
    t <- infer (body f) (M.union (fromList . args $ f) env)
    unify (Fun (map snd (args f)) t) (snd . name $ f)



-- | infer
infer :: C.C -> TyEnv -> RunRun Type
infer (Let (x, Array t) (C.Int address) e) env = do
    let nenv = addTyenv x (Array t) env
    eputstrln $ printf "%s (=%d) was assumed as a pointer of type %s@" x address (show $ Array t)
    infer e nenv
infer (Let (x, Tuple ts) (C.Int address) e) env = do
    let nenv = addTyenv x (Tuple ts) env
    eputstrln $ printf "%s (=%d) was assumed as a pointer of type %s@" x address (show $ Tuple ts)
    infer e nenv
infer C.Unit _ = return Unit
infer (C.Int _) _ = return Int
infer (C.Float _) _ = return Float
infer (Unary_op _ t1 t2 x) env = do
    unify t1 (env M.! x)
    return t2
infer (Arith1 _ x) env = do
    unify Int (env M.! x)
    return Int
infer (Arith2 _ x y) env = do
    unify Int (env M.! x)
    unify Int (env M.! y)
    return Int
infer (Float1 _ x) env = do
    unify Float (env M.! x)
    return Float
infer (Float2 _ x y) env = do
    unify Float (env M.! x)
    unify Float (env M.! y)
    return Float
infer (Cmp _ x y) env = do
    unify Int (env M.! x)
    unify Int (env M.! y)
    return Int
infer (If x e1 e2) env = do
    unify Int (env M.! x)
    t1 <- infer e1 env
    t2 <- infer e2 env
    unify t1 t2
    return t1
infer (IfCmp _ x y e1 e2) env = do
    unify Int (env M.! x)
    unify Int (env M.! y)
    t1 <- infer e1 env
    t2 <- infer e2 env
    unify t1 t2
    return t1
infer (FIfCmp _ x y e1 e2) env = do
    unify Float (env M.! x)
    unify Float (env M.! y)
    t1 <- infer e1 env
    t2 <- infer e2 env
    unify t1 t2
    return t1
infer (Let (x,t) e1 e2) env = do
    t' <- infer e1 env
    unify t t'
    let nenv = addTyenv x t' env
    infer e2 nenv
infer (C.Var x) env = return (env M.! x)
-- assuming that no external variables exist
infer (Out _ x) env = do
    unify Int (env M.! x)
    return Unit
infer (In t) _ = return t
infer (C.Tuple xs) env =
    return $ Tuple $ map (env M.!) xs
infer (LetTuple xts y e) env = do
    let ts = map snd xts
    unify (Tuple ts) (env M.! y)
    let nenv = foldr (\ (x,t) envacc -> addTyenv x t envacc) env xts
    infer e nenv
infer (C.Array t x y) env = do
    unify t (env M.! y)
    unify Int (env M.! x)
    return $ Array t
infer (Get x y) env = do
    unify Int (env M.! y)
    t <- Var <$> newTyVar
    unify (Array t) (env M.! x)
    return t
infer (Put x y z) env = do
    unify Int (env M.! y)
    let t = (env M.! z)
    unify (env M.! x) (Array t)
    return Unit
infer MakeCls{} _ = throw $ Fail "makeclosure"
infer (AppDir (L func) xs) env = do
    t <- Var <$> newTyVar
    let argst = map (env M.!) xs
        funct = env M.! func
    unify funct (Fun argst t)
    return t
infer (Malloc t _ _ (A x)) env = do
    unify t (Array (env M.! x))
    return t
infer (Malloc t _ _ (T xs)) env = do
    let ts = map (env M.!) xs
    unify t (Tuple ts)
    return t


-- | unify
unify :: Type -> Type -> RunRun ()
unify t1 t2
    | t1 == t2 = return ()
    | Int <- t1, Bool <- t2 = return ()
    | Bool <- t1, Int <- t2 = return ()
unify tt1@(Fun t1s t1) tt2@(Fun t2s t2) = do
    when (length t1s /= length t2s) $ throw $ UnifyErr tt1 tt2
    zipWithM_ unify t1s t2s
    unify t1 t2
unify t1_@(Tuple t1s) t2_@(Tuple t2s) = do
    when (length t1s /= length t2s) $ throw $ UnifyErr t1_ t2_
    zipWithM_ unify t1s t2s
unify (Array t1) (Array t2) = unify t1 t2
unify t1 t2 = do
    ss <- gets clsSubst
    case (t1,t2) of
      (Var n, _         ) | Just t <- M.lookup n ss -> unify t t2
      (_         , Var n) | Just t <- M.lookup n ss -> unify t1 t
      (Var n, _         )                           -> addTypeVar n t2 ss
      (_         , Var n)                           -> addTypeVar n t1 ss
      _                                             -> throw $ UnifyErr t1 t2
    where
        addTypeVar n t ss = do
            let tf = occur n t ss
            if not tf then addSubst n t
            else throw $ UnifyErr (Var n) t



-- | occurence check
occur :: Int -> Type -> Subst -> Bool
occur n (Var m) ss
    | m == n = True
    | Nothing <- mt = False -- is there any case of this happenning??
    | Just t  <- mt = occur n t ss
    where
        mt = M.lookup m ss
occur n (Fun t1s t2) ss = any (\x -> occur n x ss) t1s || occur n t2 ss
occur n (Tuple ts)   ss = any (\t -> occur n t ss) ts
occur n (Array t)    ss = occur n t ss
occur _ _ _ = False




------------------
-- util
------------------
newTyVar :: RunRun Int
newTyVar = do
    n <- gets clsTyCounter
    (\a -> put (a {clsTyCounter = n + 1})) =<< get
    return n
addSubst :: Int -> Type -> RunRun ()
addSubst n t = do
    ss <- gets clsSubst
    (\a -> put (a {clsSubst = M.insert n t ss})) =<< get
addTyenv :: String -> Type -> Map String Type -> Map String Type
addTyenv = M.insert
