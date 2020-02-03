module Main where

import           Control.Monad          (foldM)
import           Control.Monad.Except   ()
import           Control.Monad.Identity ()
import qualified Data.Map               as M (empty)
import           Data.Set               (empty)
import           System.Environment     (getArgs)
import           System.IO

import           RunRun.RunRun
import           RunRun.Type

import           Front.Lexer            as Lexer
import           Front.Parser           as Parser
import qualified Front.Typing           as Typing

import           Middle.Alpha           as Alpha
import           Middle.Assoc           as Assoc
import           Middle.Beta            as Beta
import           Middle.Closure         as Closure
import           Middle.ConstFold       as ConstFold
import           Middle.ConvertGlobal   as ConvertGlobal
import           Middle.Elim            as Elim
import           Middle.Global          as Global
import           Middle.Inline          as Inline
import           Middle.KNormal         as KNormal

-- import           Back.RegAlloc          as RegAlloc
import           Back.Simm              as Simm
import           Back.ToBlock           as ToBlock
import           Back.Virtual           as Virtual
-- import Back.Block           as Block
import           Back.BlockEmit         as BlockEmit
import           Back.BlockPrepare      as BlockPrepare
import           Back.BlockStackSearch  as BlockStackSearch
import Back.Reg.BlockRegAlloc as BlockRegAlloc

main :: IO ()
main = do
    filename <- (!!0) <$> getArgs
    readfile <- openFile filename ReadMode
    str <- hGetContents readfile
    oc <- openFile (take (length filename - 2) filename ++ "s") WriteMode
    a <- (`runRunRun` initEnv) $ do
        let l = Lexer.lex str
        parse l
        >>= Typing.typing
        >>= KNormal.knormal
        >>= Alpha.alpha
        >>= iter 10
        >>= Global.global
        >>= ConvertGlobal.convertGlobal
        >>= Closure.closure
        >>= Virtual.virtual
        >>= Simm.simm
        -- >>= RegAlloc.regalloc
        >>= ToBlock.toBlock
        >> BlockPrepare.prepare
        -- >>= BlockRegAlloc.regAlloc
        >>= BlockStackSearch.blockStackSearch
        >>= BlockEmit.emit oc
        -- >>= Emit.emit oc
    hClose oc
    case a of
        Left err -> print err
        Right () -> return ()
    return ()

iter :: Int -> K -> RunRun K
iter n e = foldM (\m _ -> opt m) e [1..n]

opt :: K -> RunRun K
opt e =
        Beta.beta e
        >>= Assoc.assoc
        >>= Inline.inline
        >>= ConstFold.constfold
        >>= Elim.elim


initEnv :: Env
initEnv = Env {
            tyVarCounter = 0,
            tyenv = initTyenv,
            exttyenv = initExtenv,
            idcounter = 0,
            stackset = empty,
            stackmap = [],
            toplevel = [],
            inlinenum = 0,
            globals = M.empty,
            hp = 30000,
            sp = 5040,
            blockid = 0,
            blockmap = []
            -- funcGraph = M.empty
            }
