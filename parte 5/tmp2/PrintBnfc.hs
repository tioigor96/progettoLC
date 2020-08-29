{-# LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ <= 708
{-# LANGUAGE OverlappingInstances #-}
#endif
{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}

-- | Pretty-printer for PrintBnfc.
--   Generated by the BNF converter.

module PrintBnfc where

import qualified AbsBnfc
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

instance Print AbsBnfc.LIdent where
  prt _ (AbsBnfc.LIdent i) = doc (showString i)

instance Print AbsBnfc.Program where
  prt i e = case e of
    AbsBnfc.Prog pglobls -> prPrec i 0 (concatD [prt 0 pglobls])

instance Print [AbsBnfc.PGlobl] where
  prt = prtList

instance Print AbsBnfc.PGlobl where
  prt i e = case e of
    AbsBnfc.ProgGlobB stm -> prPrec i 0 (concatD [prt 0 stm])
    AbsBnfc.ProgGlobF funcd -> prPrec i 0 (concatD [prt 0 funcd])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsBnfc.Block where
  prt i e = case e of
    AbsBnfc.Blk stms -> prPrec i 0 (concatD [prt 0 stms])

instance Print [AbsBnfc.Stm] where
  prt = prtList

instance Print AbsBnfc.BasicType where
  prt i e = case e of
    AbsBnfc.BasicType_Bool -> prPrec i 0 (concatD [doc (showString "Bool")])
    AbsBnfc.BasicType_Char -> prPrec i 0 (concatD [doc (showString "Char")])
    AbsBnfc.BasicType_Float -> prPrec i 0 (concatD [doc (showString "Float")])
    AbsBnfc.BasicType_Int -> prPrec i 0 (concatD [doc (showString "Int")])
    AbsBnfc.BasicType_String -> prPrec i 0 (concatD [doc (showString "String")])
    AbsBnfc.BasicType_Void -> prPrec i 0 (concatD [doc (showString "Void")])

instance Print AbsBnfc.Boolean where
  prt i e = case e of
    AbsBnfc.Boolean_true -> prPrec i 0 (concatD [doc (showString "true")])
    AbsBnfc.Boolean_false -> prPrec i 0 (concatD [doc (showString "false")])

instance Print AbsBnfc.PtrVoid where
  prt i e = case e of
    AbsBnfc.PtrType -> prPrec i 0 (concatD [doc (showString "nil")])

instance Print AbsBnfc.Stm where
  prt i e = case e of
    AbsBnfc.SDecl decl -> prPrec i 0 (concatD [prt 0 decl, doc (showString ";")])
    AbsBnfc.SLocal local -> prPrec i 0 (concatD [prt 0 local, doc (showString ";")])
    AbsBnfc.SAss ass -> prPrec i 0 (concatD [prt 0 ass, doc (showString ";")])
    AbsBnfc.SWhile while -> prPrec i 0 (concatD [prt 0 while])
    AbsBnfc.SRepeat repeat -> prPrec i 0 (concatD [prt 0 repeat, doc (showString ";")])
    AbsBnfc.SFor for -> prPrec i 0 (concatD [prt 0 for])
    AbsBnfc.SIf if_ -> prPrec i 0 (concatD [prt 0 if_])
    AbsBnfc.SRExp rexp -> prPrec i 0 (concatD [prt 0 rexp, doc (showString ";")])
    AbsBnfc.SEBlk eblk -> prPrec i 0 (concatD [prt 0 eblk])
    AbsBnfc.SReturn return -> prPrec i 0 (concatD [prt 0 return, doc (showString ";")])
    AbsBnfc.SBreak break -> prPrec i 0 (concatD [prt 0 break, doc (showString ";")])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsBnfc.EBlk where
  prt i e = case e of
    AbsBnfc.EBlkS block -> prPrec i 0 (concatD [doc (showString "do"), prt 0 block, doc (showString "end")])

instance Print AbsBnfc.Decl where
  prt i e = case e of
    AbsBnfc.DeclSP basictype lexp varinit -> prPrec i 0 (concatD [prt 0 basictype, prt 0 lexp, prt 0 varinit])

instance Print AbsBnfc.VarInit where
  prt i e = case e of
    AbsBnfc.VarINil -> prPrec i 0 (concatD [])
    AbsBnfc.VarExp rexp -> prPrec i 0 (concatD [doc (showString "="), prt 0 rexp])

instance Print AbsBnfc.Local where
  prt i e = case e of
    AbsBnfc.DeclLocal decl -> prPrec i 0 (concatD [doc (showString "local"), prt 0 decl])

instance Print AbsBnfc.Ass where
  prt i e = case e of
    AbsBnfc.AssD lexp rexp -> prPrec i 0 (concatD [prt 0 lexp, doc (showString "="), prt 0 rexp])

instance Print AbsBnfc.Func where
  prt i e = case e of
    AbsBnfc.FuncBW funcwrite -> prPrec i 0 (concatD [prt 0 funcwrite])
    AbsBnfc.FuncBR funcread -> prPrec i 0 (concatD [prt 0 funcread])
    AbsBnfc.FnctCall lident rexps -> prPrec i 0 (concatD [prt 0 lident, doc (showString "("), prt 0 rexps, doc (showString ")")])

instance Print AbsBnfc.FuncWrite where
  prt i e = case e of
    AbsBnfc.WriteI rexp -> prPrec i 0 (concatD [doc (showString "writeInt"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsBnfc.WriteF rexp -> prPrec i 0 (concatD [doc (showString "writeFloat"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsBnfc.WriteC rexp -> prPrec i 0 (concatD [doc (showString "writeChar"), doc (showString "("), prt 0 rexp, doc (showString ")")])
    AbsBnfc.WriteS rexp -> prPrec i 0 (concatD [doc (showString "writeString"), doc (showString "("), prt 0 rexp, doc (showString ")")])

instance Print AbsBnfc.FuncRead where
  prt i e = case e of
    AbsBnfc.ReadI -> prPrec i 0 (concatD [doc (showString "readInt"), doc (showString "("), doc (showString ")")])
    AbsBnfc.ReadF -> prPrec i 0 (concatD [doc (showString "readFloat"), doc (showString "("), doc (showString ")")])
    AbsBnfc.ReadC -> prPrec i 0 (concatD [doc (showString "readChar"), doc (showString "("), doc (showString ")")])
    AbsBnfc.ReadS -> prPrec i 0 (concatD [doc (showString "readString"), doc (showString "("), doc (showString ")")])

instance Print AbsBnfc.While where
  prt i e = case e of
    AbsBnfc.LoopW rexp block -> prPrec i 0 (concatD [doc (showString "while"), prt 0 rexp, doc (showString "do"), prt 0 block, doc (showString "end")])

instance Print AbsBnfc.Repeat where
  prt i e = case e of
    AbsBnfc.LoopR block rexp -> prPrec i 0 (concatD [doc (showString "repeat"), prt 0 block, doc (showString "until"), prt 0 rexp])

instance Print AbsBnfc.For where
  prt i e = case e of
    AbsBnfc.LoopF lident rexp1 rexp2 increment block -> prPrec i 0 (concatD [doc (showString "for"), prt 0 lident, doc (showString "="), prt 0 rexp1, doc (showString ","), prt 0 rexp2, prt 0 increment, doc (showString "do"), prt 0 block, doc (showString "end")])
    AbsBnfc.LoopFE lident1 lident2 block -> prPrec i 0 (concatD [doc (showString "for"), prt 0 lident1, doc (showString "in"), prt 0 lident2, doc (showString "do"), prt 0 block, doc (showString "end")])

instance Print AbsBnfc.Increment where
  prt i e = case e of
    AbsBnfc.FIncE -> prPrec i 0 (concatD [])
    AbsBnfc.FInc rexp -> prPrec i 0 (concatD [doc (showString ","), prt 0 rexp])

instance Print AbsBnfc.If where
  prt i e = case e of
    AbsBnfc.IfM rexp block elseifs else_ -> prPrec i 0 (concatD [doc (showString "if"), prt 0 rexp, doc (showString "then"), prt 0 block, prt 0 elseifs, prt 0 else_, doc (showString "end")])

instance Print AbsBnfc.Else where
  prt i e = case e of
    AbsBnfc.ElseS block -> prPrec i 0 (concatD [doc (showString "else"), prt 0 block])
    AbsBnfc.ElseE -> prPrec i 0 (concatD [])

instance Print AbsBnfc.ElseIf where
  prt i e = case e of
    AbsBnfc.ElseIfD rexp block -> prPrec i 0 (concatD [doc (showString "elseif"), prt 0 rexp, doc (showString "then"), prt 0 block])
  prtList _ [] = concatD []
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print [AbsBnfc.ElseIf] where
  prt = prtList

instance Print AbsBnfc.Return where
  prt i e = case e of
    AbsBnfc.JumpR rvalue -> prPrec i 0 (concatD [doc (showString "return"), prt 0 rvalue])

instance Print AbsBnfc.RValue where
  prt i e = case e of
    AbsBnfc.JumpRE -> prPrec i 0 (concatD [])
    AbsBnfc.JumpRV rexp -> prPrec i 0 (concatD [prt 0 rexp])

instance Print AbsBnfc.Break where
  prt i e = case e of
    AbsBnfc.JumpB -> prPrec i 0 (concatD [doc (showString "break")])

instance Print [AbsBnfc.RExp] where
  prt = prtList

instance Print AbsBnfc.FuncD where
  prt i e = case e of
    AbsBnfc.FnctDecl basictype lident paramfs block -> prPrec i 0 (concatD [prt 0 basictype, doc (showString "function"), prt 0 lident, doc (showString "("), prt 0 paramfs, doc (showString ")"), prt 0 block, doc (showString "end")])

instance Print AbsBnfc.ParamF where
  prt i e = case e of
    AbsBnfc.ParmDeclF modality basictype lexp -> prPrec i 0 (concatD [prt 0 modality, prt 0 basictype, prt 0 lexp])
  prtList _ [] = concatD []
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print [AbsBnfc.ParamF] where
  prt = prtList

instance Print AbsBnfc.Modality where
  prt i e = case e of
    AbsBnfc.Modality1 -> prPrec i 0 (concatD [])
    AbsBnfc.Modality_val -> prPrec i 0 (concatD [doc (showString "val")])
    AbsBnfc.Modality_ref -> prPrec i 0 (concatD [doc (showString "ref")])
    AbsBnfc.Modality_const -> prPrec i 0 (concatD [doc (showString "const")])
    AbsBnfc.Modality_res -> prPrec i 0 (concatD [doc (showString "res")])
    AbsBnfc.Modality_valres -> prPrec i 0 (concatD [doc (showString "valres")])
    AbsBnfc.Modality_name -> prPrec i 0 (concatD [doc (showString "name")])

instance Print AbsBnfc.LExp where
  prt i e = case e of
    AbsBnfc.LExpS lident -> prPrec i 0 (concatD [prt 0 lident])
    AbsBnfc.LExpDR lexp -> prPrec i 0 (concatD [doc (showString "*"), prt 0 lexp])
    AbsBnfc.LExpA lident dims -> prPrec i 0 (concatD [prt 0 lident, prt 0 dims])

instance Print [AbsBnfc.Dim] where
  prt = prtList

instance Print AbsBnfc.Dim where
  prt i e = case e of
    AbsBnfc.Dims n -> prPrec i 0 (concatD [doc (showString "["), prt 0 n, doc (showString "]")])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, prt 0 xs]

instance Print AbsBnfc.RExp where
  prt i e = case e of
    AbsBnfc.Or rexp1 rexp2 -> prPrec i 0 (concatD [prt 0 rexp1, doc (showString "or"), prt 1 rexp2])
    AbsBnfc.And rexp1 rexp2 -> prPrec i 0 (concatD [prt 1 rexp1, doc (showString "and"), prt 2 rexp2])
    AbsBnfc.Not rexp -> prPrec i 2 (concatD [doc (showString "not"), prt 3 rexp])
    AbsBnfc.Eq rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "=="), prt 5 rexp2])
    AbsBnfc.Neq rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "~="), prt 5 rexp2])
    AbsBnfc.Lt rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "<"), prt 5 rexp2])
    AbsBnfc.LtE rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString "<="), prt 5 rexp2])
    AbsBnfc.Gt rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString ">"), prt 5 rexp2])
    AbsBnfc.GtE rexp1 rexp2 -> prPrec i 3 (concatD [prt 3 rexp1, doc (showString ">="), prt 5 rexp2])
    AbsBnfc.Add rexp1 rexp2 -> prPrec i 6 (concatD [prt 6 rexp1, doc (showString "+"), prt 7 rexp2])
    AbsBnfc.Sub rexp1 rexp2 -> prPrec i 6 (concatD [prt 6 rexp1, doc (showString "-"), prt 7 rexp2])
    AbsBnfc.Mul rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "*"), prt 8 rexp2])
    AbsBnfc.Div rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "/"), prt 8 rexp2])
    AbsBnfc.Rem rexp1 rexp2 -> prPrec i 7 (concatD [prt 7 rexp1, doc (showString "%"), prt 8 rexp2])
    AbsBnfc.Pow rexp1 rexp2 -> prPrec i 8 (concatD [prt 9 rexp1, doc (showString "^"), prt 8 rexp2])
    AbsBnfc.Neg rexp -> prPrec i 9 (concatD [doc (showString "-"), prt 10 rexp])
    AbsBnfc.FCall func -> prPrec i 10 (concatD [prt 0 func])
    AbsBnfc.FStrCnt rexp1 rexp2 -> prPrec i 10 (concatD [prt 10 rexp1, doc (showString ".."), prt 11 rexp2])
    AbsBnfc.FLen rexp -> prPrec i 10 (concatD [doc (showString "#"), prt 11 rexp])
    AbsBnfc.ValInt n -> prPrec i 11 (concatD [prt 0 n])
    AbsBnfc.ValVariable lexp -> prPrec i 11 (concatD [prt 0 lexp])
    AbsBnfc.ValRef lexp -> prPrec i 11 (concatD [doc (showString "&"), prt 0 lexp])
    AbsBnfc.ValDouble d -> prPrec i 11 (concatD [prt 0 d])
    AbsBnfc.ValString str -> prPrec i 11 (concatD [prt 0 str])
    AbsBnfc.ValChar c -> prPrec i 11 (concatD [prt 0 c])
    AbsBnfc.ValBoolean boolean -> prPrec i 11 (concatD [prt 0 boolean])
    AbsBnfc.ValPtr ptrvoid -> prPrec i 11 (concatD [prt 0 ptrvoid])
    AbsBnfc.ValMArr array -> prPrec i 12 (concatD [doc (showString "{"), prt 0 array, doc (showString "}")])
  prtList _ [] = concatD []
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print AbsBnfc.Array where
  prt i e = case e of
    AbsBnfc.ArrayV0 array1 array2 -> prPrec i 0 (concatD [doc (showString "{"), prt 0 array1, doc (showString "}"), doc (showString ","), prt 0 array2])
    AbsBnfc.ArrayV1 array -> prPrec i 0 (concatD [doc (showString "{"), prt 0 array, doc (showString "}")])
    AbsBnfc.ArrayV2 vtypes -> prPrec i 0 (concatD [prt 0 vtypes])

instance Print AbsBnfc.VType where
  prt i e = case e of
    AbsBnfc.VTypeBoolean boolean -> prPrec i 0 (concatD [prt 0 boolean])
    AbsBnfc.VTypeChar c -> prPrec i 0 (concatD [prt 0 c])
    AbsBnfc.VTypeDouble d -> prPrec i 0 (concatD [prt 0 d])
    AbsBnfc.VTypeInteger n -> prPrec i 0 (concatD [prt 0 n])
    AbsBnfc.VTypeString str -> prPrec i 0 (concatD [prt 0 str])
    AbsBnfc.VTypePtrVoid ptrvoid -> prPrec i 0 (concatD [prt 0 ptrvoid])
    AbsBnfc.VType1 -> prPrec i 0 (concatD [])
  prtList _ [x] = concatD [prt 0 x]
  prtList _ (x:xs) = concatD [prt 0 x, doc (showString ","), prt 0 xs]

instance Print [AbsBnfc.VType] where
  prt = prtList
