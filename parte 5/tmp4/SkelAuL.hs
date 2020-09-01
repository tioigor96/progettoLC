module SkelAuL where

-- Haskell module generated by the BNF converter

import AbsAuL
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transLIdent :: LIdent -> Result
transLIdent x = case x of
  LIdent string -> failure x
transProgram :: Program -> Result
transProgram x = case x of
  Prog pglobls -> failure x
transPGlobl :: PGlobl -> Result
transPGlobl x = case x of
  ProgGlobB stm -> failure x
  ProgGlobF funcd -> failure x
transBlock :: Block -> Result
transBlock x = case x of
  Blk stms -> failure x
transBasicType :: BasicType -> Result
transBasicType x = case x of
  BasicType_Bool -> failure x
  BasicType_Char -> failure x
  BasicType_Float -> failure x
  BasicType_Int -> failure x
  BasicType_String -> failure x
  BasicType_Void -> failure x
transBoolean :: Boolean -> Result
transBoolean x = case x of
  Boolean_true -> failure x
  Boolean_false -> failure x
transPtrVoid :: PtrVoid -> Result
transPtrVoid x = case x of
  PtrType -> failure x
transCompoundType :: CompoundType -> Result
transCompoundType x = case x of
  CompTypeP compoundtype -> failure x
  CompTypeM compoundtype -> failure x
  CompTypeB basictype -> failure x
transStm :: Stm -> Result
transStm x = case x of
  SDecl decl -> failure x
  SLocal local -> failure x
  SAss ass -> failure x
  SWhile while -> failure x
  SRepeat repeat -> failure x
  SFor for -> failure x
  SIf if_ -> failure x
  SRExp func -> failure x
  SEBlk eblk -> failure x
  SReturn return -> failure x
  SBreak break -> failure x
transEBlk :: EBlk -> Result
transEBlk x = case x of
  EBlkS block -> failure x
transDecl :: Decl -> Result
transDecl x = case x of
  DeclSP basictype lexp varinit -> failure x
transVarInit :: VarInit -> Result
transVarInit x = case x of
  VarINil -> failure x
  VarExp rexp -> failure x
  VarMat array -> failure x
transArray :: Array -> Result
transArray x = case x of
  ArrayV0 arrays -> failure x
  ArrayV1 vtypes -> failure x
transVType :: VType -> Result
transVType x = case x of
  VTypeBoolean boolean -> failure x
  VTypeChar char -> failure x
  VTypeDouble double -> failure x
  VTypeInteger integer -> failure x
  VTypeString string -> failure x
  VTypePtrVoid ptrvoid -> failure x
transLocal :: Local -> Result
transLocal x = case x of
  DeclLocal decl -> failure x
transAss :: Ass -> Result
transAss x = case x of
  AssD lexp rexp -> failure x
transFunc :: Func -> Result
transFunc x = case x of
  FuncBW funcwrite -> failure x
  FuncBR funcread -> failure x
  FnctCall lident rexps -> failure x
transFuncWrite :: FuncWrite -> Result
transFuncWrite x = case x of
  WriteI rexp -> failure x
  WriteF rexp -> failure x
  WriteC rexp -> failure x
  WriteS rexp -> failure x
transFuncRead :: FuncRead -> Result
transFuncRead x = case x of
  ReadI -> failure x
  ReadF -> failure x
  ReadC -> failure x
  ReadS -> failure x
transWhile :: While -> Result
transWhile x = case x of
  LoopW rexp eblk -> failure x
transRepeat :: Repeat -> Result
transRepeat x = case x of
  LoopR block rexp -> failure x
transFor :: For -> Result
transFor x = case x of
  LoopF lident rexp1 rexp2 increment eblk -> failure x
  LoopFE lident1 lident2 eblk -> failure x
transIncrement :: Increment -> Result
transIncrement x = case x of
  FIncE -> failure x
  FInc rexp -> failure x
transIf :: If -> Result
transIf x = case x of
  IfM rexp block elseifs else_ -> failure x
transElse :: Else -> Result
transElse x = case x of
  ElseS block -> failure x
  ElseE -> failure x
transElseIf :: ElseIf -> Result
transElseIf x = case x of
  ElseIfD rexp block -> failure x
transReturn :: Return -> Result
transReturn x = case x of
  JumpR rvalue -> failure x
transRValue :: RValue -> Result
transRValue x = case x of
  JumpRE -> failure x
  JumpRV rexp -> failure x
transBreak :: Break -> Result
transBreak x = case x of
  JumpB -> failure x
transFuncD :: FuncD -> Result
transFuncD x = case x of
  FnctDecl compoundtype lident paramfs block -> failure x
transParamF :: ParamF -> Result
transParamF x = case x of
  ParmDeclF modality basictype lexp -> failure x
transModality :: Modality -> Result
transModality x = case x of
  Modality1 -> failure x
  Modality_val -> failure x
  Modality_ref -> failure x
  Modality_const -> failure x
  Modality_res -> failure x
  Modality_valres -> failure x
  Modality_name -> failure x
transLExp :: LExp -> Result
transLExp x = case x of
  LExpS lident -> failure x
  LExpDR lexp -> failure x
  LExpA lident dims -> failure x
transDim :: Dim -> Result
transDim x = case x of
  Dims integer -> failure x
transRExp :: RExp -> Result
transRExp x = case x of
  Or rexp1 rexp2 -> failure x
  And rexp1 rexp2 -> failure x
  Not rexp -> failure x
  Eq rexp1 rexp2 -> failure x
  Neq rexp1 rexp2 -> failure x
  Lt rexp1 rexp2 -> failure x
  LtE rexp1 rexp2 -> failure x
  Gt rexp1 rexp2 -> failure x
  GtE rexp1 rexp2 -> failure x
  Add rexp1 rexp2 -> failure x
  Sub rexp1 rexp2 -> failure x
  Mul rexp1 rexp2 -> failure x
  Div rexp1 rexp2 -> failure x
  Rem rexp1 rexp2 -> failure x
  Pow rexp1 rexp2 -> failure x
  Neg rexp -> failure x
  FCall func -> failure x
  FStrCnt rexp1 rexp2 -> failure x
  FLen rexp -> failure x
  ValInt integer -> failure x
  ValVariable lexp -> failure x
  ValRef lexp -> failure x
  ValDouble double -> failure x
  ValString string -> failure x
  ValChar char -> failure x
  ValBoolean boolean -> failure x
  ValPtr ptrvoid -> failure x

