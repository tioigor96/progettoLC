{-# LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ <= 708
{-# LANGUAGE OverlappingInstances #-}
#endif
{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}

-- | Pretty-printer for PrintAuL.
--   Generated by the BNF converter.

module PrintAuL where

import qualified AbsAuL
import Data.Char

-- | The top-level printing method.
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . (if ts /= [] then
                                      (case (head ts) of "end" -> (new(i-1) . rend (i-1) ts)
                                                         "until" -> (new i . rend (i-1) ts)
                                                         "else" -> (new (i-1) . rend i ts) 
                                                         "elseif" -> (new (i-1) . rend (i-1) ts) 
                                                         _ -> new i . rend i ts)
                                    else new i . rend i ts)
    ")"      :ts -> showChar ')' . (if ts /= [] then
                                      if (head ts /= "+" && head ts /= "-" && head ts /= "/" && head ts /= ";" && head ts /= "*" &&
                                          head ts /= "%" && head ts /= "&") 
                                          then new (i+1) . rend (i+1) ts
                                      else  rend i ts
                                    else new i . rend i ts)
    "do"     :ts -> showString "do" . new (i+1) . rend (i+1) ts
    "then"   :ts -> showString "then" . new (i+1) . rend (i+1) ts
    "else"   :ts -> showString "else" .(if ts /= [] then
                                        (case (head ts) of "if" -> (new(i) . rend i ts)
                                                           "until" -> (new i . rend (i-1) ts)
                                                           "else" -> (new (i-1) . rend i ts) 
                                                           "elseif" -> (new (i-1) . rend (i-1) ts) 
                                                           _ -> new i . rend i ts)
                                        else new (i) . rend (i+1) ts)
    "repeat" :ts -> showString "repeat" . new (i+1) . rend (i+1) ts
    "end"    :ts -> showString "end" . (if ts /= [] then
                                          (case (head ts) of "end" -> (new(i-1) . rend (i-1) ts)
                                                             "until" -> (new i . rend (i-1) ts)
                                                             "else" -> (new (i-1) . rend i ts) 
                                                             "elseif" -> (new (i-1) . rend i ts) 
                                                             _ -> new i . rend i ts)
                                       else new i . rend i ts)
    t  : ts@(p:_) | closingOrPunctuation p -> showString t . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else ' ':s)

  closingOrPunctuation :: String -> Bool
  closingOrPunctuation [c] = c `elem` closerOrPunct
  closingOrPunctuation _   = False

  closerOrPunct :: String
  closerOrPunct = ")],;"

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)


-- | The printer class does the job.

class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance {-# OVERLAPPABLE #-} Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j < i then parenth else id

instance Print Integer where
  prt _ x = doc (shows x)

instance Print Double where
  prt _ x = doc (shows x)

instance Print AbsAuL.LIdent where
  prt _ (AbsAuL.LIdent i) = doc (showString i)

instance Print AbsAuL.Program where
  prt i e = case e of
    AbsAuL.Prog pglobls -> prPrec i 0 (concatD [prt 0 pglobls])

instance Print [AbsAuL.PGlobl] where
  prt = prtList

instance Print AbsAuL.PGlobl where
  prt i e = case e of
    AbsAuL.ProgGlobB stm -> prPrec i 0 (concatD [prt 0 stm])
    AbsAuL.ProgGlobF funcd -> prPrec i 0 (concatD [prt 0 funcd])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsAuL.Block where
  prt i e = case e of
    AbsAuL.Blk stms -> prPrec i 0 (concatD [prt 0 stms])

instance Print [AbsAuL.Stm] where
  prt = prtList

instance Print AbsAuL.BasicType where
  prt i e = case e of
    AbsAuL.BasicType_Bool -> prPrec i 0 (concatD [doc (showString "Bool")])
    AbsAuL.BasicType_Char -> prPrec i 0 (concatD [doc (showString "Char")])
    AbsAuL.BasicType_Float -> prPrec i 0 (concatD [doc (showString "Float")])
    AbsAuL.BasicType_Int -> prPrec i 0 (concatD [doc (showString "Int")])
    AbsAuL.BasicType_String -> prPrec i 0 (concatD [doc (showString "String")])
    AbsAuL.BasicType_Void -> prPrec i 0 (concatD [doc (showString "Void")])

instance Print AbsAuL.Boolean where
  prt i e = case e of
    AbsAuL.Boolean_true -> prPrec i 0 (concatD [doc (showString "true")])
    AbsAuL.Boolean_false -> prPrec i 0 (concatD [doc (showString "false")])

instance Print AbsAuL.PtrVoid where
  prt i e = case e of
    AbsAuL.PtrType -> prPrec i 0 (concatD [doc (showString "nil")])

instance Print AbsAuL.CompoundType where
  prt i e = case e of
    AbsAuL.CompTypeP compoundtype -> prPrec i 0 (concatD [doc (showString "*"), prt 0 compoundtype])
    AbsAuL.CompTypeM compoundtype -> prPrec i 0 (concatD [prt 0 compoundtype, doc (showString "["), doc (showString "]")])
    AbsAuL.CompTypeB basictype -> prPrec i 0 (concatD [prt 0 basictype])

instance Print AbsAuL.Stm where
  prt i e = case e of
    AbsAuL.SDecl decl -> prPrec i 0 (concatD [prt 0 decl, doc (showString ";")])
    AbsAuL.SLocal local -> prPrec i 0 (concatD [prt 0 local, doc (showString ";")])
    AbsAuL.SAss ass -> prPrec i 0 (concatD [prt 0 ass, doc (showString ";")])
    AbsAuL.SWhile while -> prPrec i 0 (concatD [prt 0 while])
    AbsAuL.SRepeat repeat -> prPrec i 0 (concatD [prt 0 repeat, doc (showString ";")])
    AbsAuL.SFor for -> prPrec i 0 (concatD [prt 0 for])
    AbsAuL.SIf if_ -> prPrec i 0 (concatD [prt 0 if_])
    AbsAuL.SRExp func -> prPrec i 0 (concatD [prt 0 func, doc (showString ";")])
    AbsAuL.SEBlk eblk -> prPrec i 0 (concatD [prt 0 eblk])
    AbsAuL.SReturn return -> prPrec i 0 (concatD [prt 0 return, doc (showString ";")])
    AbsAuL.SBreak break -> prPrec i 0 (concatD [prt 0 break, doc (showString ";")])
  prtList _ [] = concatD []
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsAuL.EBlk where
  prt i e = case e of
    AbsAuL.EBlkS block -> prPrec i 0 (concatD [doc (showString "do"), prt 0 block, doc (showString "end")])

instance Print AbsAuL.Decl where
  prt i e = case e of
    AbsAuL.DeclSP basictype lexp varinit -> prPrec i 0 (concatD [prt 0 basictype, prt 0 lexp, prt 0 varinit])

instance Print AbsAuL.VarInit where
  prt i e = case e of
    AbsAuL.VarINil -> prPrec i 0 (concatD [])
    AbsAuL.VarExp rexp -> prPrec i 0 (concatD [doc (showString "="), prt 0 rexp])
    AbsAuL.VarMat array -> prPrec i 0 (concatD [doc (showString "="), prt 0 array])

instance Print AbsAuL.Array where
  prt i e = case e of
    AbsAuL.ArrayV0 arrays -> prPrec i 0 (concatD [doc (showString "{"), prt 0 arrays, doc (showString "}")])
    AbsAuL.ArrayV1 vtypes -> prPrec i 0 (concatD [doc (showString "{"), prt 0 vtypes, doc (showString "}")])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print AbsAuL.VType where
  prt i e = case e of
    AbsAuL.VTypeBoolean boolean -> prPrec i 0 (concatD [prt 0 boolean])
    AbsAuL.VTypeChar c -> prPrec i 0 (concatD [prt 0 c])
    AbsAuL.VTypeDouble d -> prPrec i 0 (concatD [prt 0 d])
    AbsAuL.VTypeInteger n -> prPrec i 0 (concatD [prt 0 n])
    AbsAuL.VTypeString str -> prPrec i 0 (concatD [prt 0 str])
    AbsAuL.VTypePtrVoid ptrvoid -> prPrec i 0 (concatD [prt 0 ptrvoid])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print [AbsAuL.VType] where
  prt = prtList

instance Print [AbsAuL.Array] where
  prt = prtList

instance Print AbsAuL.Local where
  prt i e = case e of
    AbsAuL.DeclLocal decl -> prPrec i 0 (concatD [doc (showString "local"), prt 0 decl])

instance Print AbsAuL.Ass where
  prt i e = case e of
    AbsAuL.AssD lexp rexp -> prPrec i 0 (concatD [prt 0 lexp, doc (showString "="), prt 0 rexp])

instance Print AbsAuL.Func where
  prt i e = case e of
    AbsAuL.FuncBW funcwrite -> prPrec i 0 (concatD [prt 0 funcwrite])
    AbsAuL.FuncBR funcread -> prPrec i 0 (concatD [prt 0 funcread])
    AbsAuL.FnctCall lident rexps -> prPrec i 0 (concatD [prt 0 lident, doc (showString "("), prt 0 rexps, doc (showString ")")])

instance Print AbsAuL.FuncWrite where
  prt i e = case e of
    AbsAuL.WriteI rexp -> prPrec i 0 (concatD [doc (showString "writeInt"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsAuL.WriteF rexp -> prPrec i 0 (concatD [doc (showString "writeFloat"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsAuL.WriteC rexp -> prPrec i 0 (concatD [doc (showString "writeChar"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsAuL.WriteS rexp -> prPrec i 0 (concatD [doc (showString "writeString"), doc (showString "("), prt 0 rexp, doc (showString ")")])

instance Print AbsAuL.FuncRead where
  prt i e = case e of
    AbsAuL.ReadI -> prPrec i 0 (concatD [doc (showString "readInt"), doc (showString "("), doc (showString ")")])
    AbsAuL.ReadF -> prPrec i 0 (concatD [doc (showString "readFloat"), doc (showString "("), doc (showString ")")])
    AbsAuL.ReadC -> prPrec i 0 (concatD [doc (showString "readChar"), doc (showString "("), doc (showString ")")])
    AbsAuL.ReadS -> prPrec i 0 (concatD [doc (showString "readString"), doc (showString "("), doc (showString ")")])

instance Print AbsAuL.While where
  prt i e = case e of
    AbsAuL.LoopW rexp eblk -> prPrec i 0 (concatD [doc (showString "while"), prt 0 rexp, prt 0 eblk])

instance Print AbsAuL.Repeat where
  prt i e = case e of
    AbsAuL.LoopR block rexp -> prPrec i 0 (concatD [doc (showString "repeat"), prt 0 block, doc (showString "until"), prt 0 rexp])

instance Print AbsAuL.For where
  prt i e = case e of
    AbsAuL.LoopF lident rexp1 rexp2 increment eblk -> prPrec i 0 (concatD [doc (showString "for"), prt 0 lident, doc (showString "="), prt 0 rexp1, doc (showString ","), prt 0 rexp2, prt 0 increment, prt 0 eblk])
    AbsAuL.LoopFE lident1 lident2 eblk -> prPrec i 0 (concatD [doc (showString "for"), prt 0 lident1, doc (showString "in"), prt 0 lident2, prt 0 eblk])

instance Print AbsAuL.Increment where
  prt i e = case e of
    AbsAuL.FIncE -> prPrec i 0 (concatD [])
    AbsAuL.FInc rexp -> prPrec i 0 (concatD [doc (showString ","), prt 0 rexp])

instance Print AbsAuL.If where
  prt i e = case e of
    AbsAuL.IfM rexp block elseifs else_ -> prPrec i 0 (concatD [doc (showString "if"), prt 0 rexp, doc (showString "then"), prt 0 block, prt 0 elseifs, prt 0 else_, doc (showString "end")])

instance Print AbsAuL.Else where
  prt i e = case e of
    AbsAuL.ElseS block -> prPrec i 0 (concatD [doc (showString "else"), prt 0 block])
    AbsAuL.ElseE -> prPrec i 0 (concatD [])

instance Print AbsAuL.ElseIf where
  prt i e = case e of
    AbsAuL.ElseIfD rexp block -> prPrec i 0 (concatD [doc (showString "elseif"), prt 0 rexp, doc (showString "then"), prt 0 block])
  prtList _ [] = concatD []
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print [AbsAuL.ElseIf] where
  prt = prtList

instance Print AbsAuL.Return where
  prt i e = case e of
    AbsAuL.JumpR rvalue -> prPrec i 0 (concatD [doc (showString "return"), prt 0 rvalue])

instance Print AbsAuL.RValue where
  prt i e = case e of
    AbsAuL.JumpRE -> prPrec i 0 (concatD [])
    AbsAuL.JumpRV rexp -> prPrec i 0 (concatD [prt 0 rexp])

instance Print AbsAuL.Break where
  prt i e = case e of
    AbsAuL.JumpB -> prPrec i 0 (concatD [doc (showString "break")])

instance Print [AbsAuL.RExp] where
  prt = prtList

instance Print AbsAuL.FuncD where
  prt i e = case e of
    AbsAuL.FnctDecl compoundtype lident paramfs block -> prPrec i 0 (concatD [prt 0 compoundtype, doc (showString "function"), prt 0 lident, doc (showString "("), prt 0 paramfs, doc (showString ")"), prt 0 block, doc (showString "end")])

instance Print AbsAuL.ParamF where
  prt i e = case e of
    AbsAuL.ParmDeclF modality basictype lexp -> prPrec i 0 (concatD [prt 0 modality, prt 0 basictype, prt 0 lexp])
  prtList _ [] = concatD []
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print [AbsAuL.ParamF] where
  prt = prtList

instance Print AbsAuL.Modality where
  prt i e = case e of
    AbsAuL.Modality1 -> prPrec i 0 (concatD [])
    AbsAuL.Modality_val -> prPrec i 0 (concatD [doc (showString "val")])
    AbsAuL.Modality_ref -> prPrec i 0 (concatD [doc (showString "ref")])
    AbsAuL.Modality_const -> prPrec i 0 (concatD [doc (showString "const")])
    AbsAuL.Modality_res -> prPrec i 0 (concatD [doc (showString "res")])
    AbsAuL.Modality_valres -> prPrec i 0 (concatD [doc (showString "valres")])
    AbsAuL.Modality_name -> prPrec i 0 (concatD [doc (showString "name")])

instance Print AbsAuL.LExp where
  prt i e = case e of
    AbsAuL.LExpS lident -> prPrec i 0 (concatD [prt 0 lident])
    AbsAuL.LExpDR lexp -> prPrec i 0 (concatD [doc (showString "*"), prt 0 lexp])
    AbsAuL.LExpA lident dims -> prPrec i 0 (concatD [prt 0 lident, prt 0 dims])

instance Print [AbsAuL.Dim] where
  prt = prtList

instance Print AbsAuL.Dim where
  prt i e = case e of
    AbsAuL.Dims n -> prPrec i 0 (concatD [doc (showString "["), prt 0 n, doc (showString "]")])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsAuL.RExp where
  prt i e = case e of
    AbsAuL.Or rexp1 rexp2 -> prPrec i 0 (concatD [prt 0 rexp1, doc (showString "or"), prt 1 rexp2])
    AbsAuL.And rexp1 rexp2 -> prPrec i 0 (concatD [prt 1 rexp1, doc (showString "and"), prt 2 rexp2])
    AbsAuL.Not rexp -> prPrec i 2 (concatD [doc (showString "not"), prt 3 rexp])
    AbsAuL.Eq rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "=="), prt 5 rexp2])
    AbsAuL.Neq rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "~="), prt 5 rexp2])
    AbsAuL.Lt rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "<"), prt 5 rexp2])
    AbsAuL.LtE rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "<="), prt 5 rexp2])
    AbsAuL.Gt rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString ">"), prt 5 rexp2])
    AbsAuL.GtE rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString ">="), prt 5 rexp2])
    AbsAuL.Add rexp1 rexp2 -> prPrec i 6 (concatD [prt 6 rexp1, doc (showString "+"), prt 7 rexp2])
    AbsAuL.Sub rexp1 rexp2 -> prPrec i 6 (concatD [prt 6 rexp1, doc (showString "-"), prt 7 rexp2])
    AbsAuL.Mul rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "*"), prt 8 rexp2])
    AbsAuL.Div rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "/"), prt 8 rexp2])
    AbsAuL.Rem rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "%"), prt 8 rexp2])
    AbsAuL.Pow rexp1 rexp2 -> prPrec i 8 (concatD [prt 9 rexp1, doc (showString "^"), prt 8 rexp2])
    AbsAuL.Neg rexp -> prPrec i 9 (concatD [doc (showString "-"), prt 10 rexp])
    AbsAuL.FCall func -> prPrec i 10 (concatD [prt 0 func])
    AbsAuL.FStrCnt rexp1 rexp2 -> prPrec i 10 (concatD [prt 10 rexp1, doc (showString ".."), prt 11 rexp2])
    AbsAuL.FLen rexp -> prPrec i 10 (concatD [doc (showString "#"), prt 11 rexp])
    AbsAuL.ValInt n -> prPrec i 11 (concatD [prt 0 n])
    AbsAuL.ValVariable lexp -> prPrec i 11 (concatD [prt 0 lexp])
    AbsAuL.ValRef lexp -> prPrec i 11 (concatD [doc (showString "&"), prt 0 lexp])
    AbsAuL.ValDouble d -> prPrec i 11 (concatD [prt 0 d])
    AbsAuL.ValString str -> prPrec i 11 (concatD [prt 0 str])
    AbsAuL.ValChar c -> prPrec i 11 (concatD [prt 0 c])
    AbsAuL.ValBoolean boolean -> prPrec i 11 (concatD [prt 0 boolean])
    AbsAuL.ValPtr ptrvoid -> prPrec i 11 (concatD [prt 0 ptrvoid])
  prtList _ [] = concatD []
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

