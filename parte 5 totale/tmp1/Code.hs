module Code where

import TAC
import Env
import AbsAuL
import LexAuL
import Data.Maybe

--toTACType BasicType_Bool = BoolTypeTac
--toTACType BasicType_Char = CharTypeTac
--toTACType BasicType_Float = FloatTypeTac
--toTACType BasicType_Int = IntTypeTac
--toTACType BasicType_String = StringTypeTac
--toTACType (ArrayT _ _) = ArrayTypeTac
--toTACType ( BasicType_PointerT _) = PointerTypeTac

toTACType a = case (getBaseType a) of BasicType_Bool -> BoolTypeTac
                                      BasicType_Char -> CharTypeTac
                                      BasicType_Float -> FloatTypeTac
                                      BasicType_Int -> IntTypeTac
                                      BasicType_String -> StringTypeTac

paramToTac :: [(ParamF,Posn,String)] ->  [TAC]
paramToTac [] = []
paramToTac ((_ , psn, id ):xs)  = (Rules (ArgFun (NameTac id psn))) : paramToTac xs  

listDimToTac :: [(ArgOp)] -> [TAC]
listDimToTac [] = []
listDimToTac (x:xs) = (Rules (ListDimension x)): listDimToTac xs

listElemToTac :: [(ArgOp)] -> [TAC]
listElemToTac [] = []
listElemToTac (x:xs) = (Rules (ListElem x)): listElemToTac xs

listRexpToTac :: [(ArgOp)] -> [TAC]
listRexpToTac [] = []
listRexpToTac (x:xs) = (Rules (ListRexp x)): listRexpToTac xs


getString :: Token -> String
getString (PT _ (TS s _)) = s
getString (PT _ (TL s)) = s
getString (PT _ (TI s)) = s
getString (PT _ (TV s)) = s
getString (PT _ (TD s)) = s
getString (PT _ (TC s)) = s
getString (PT _ (T_LIdent s)) = s

-- for CODE attribute

codeBinOp :: CmpType-> CmpType-> ArgOp -> ArgOp -> State -> BinOp -> [TAC]
codeBinOp type1 type3 addr1 addr3 state op =
    if (type1 == type3 && type1 == Base BasicType_Int )
    -- AssgmBin TypeTac ArgOp ArgOp BinaryOp ArgOp   
      then [(Rules (AssgmBin (toTACType type1)
                             (gentemp state 1)
                             addr1
                             (binop op (toTACType type1))
                             addr3))]
    else if (type1 == type3 && type1 == Base BasicType_Float )
      then [(Rules (AssgmBin (toTACType type1)
                             (gentemp state 1)
                             addr1
                             (binop op (toTACType type1))
                             addr3))]
    -- Cast ArgOp TypeTac TypeTac ArgOp                        
    else if (type1 == higherType type1 type3 && (type1 == Base BasicType_Float || type3 == Base BasicType_Float))
      then [(Rules (Cast (gentemp state 1)
                         (toTACType type1)
                         (toTACType type3)
                         addr3)),
            (Rules (AssgmBin (toTACType type1)
                             (gentemp state 2)
                             addr1
                             (binop op (toTACType type1))
                             (gentemp state 1)))]
    else if (type3 == higherType type1 type3 && isAritmetic type1 && isAritmetic type3)
      then [(Rules (Cast (gentemp state 1)
                         (toTACType type3)
                         (toTACType type1)
                         addr1)),
            (Rules (AssgmBin (toTACType type3)
                             (gentemp state 2)
                             (gentemp state 1)
                             (binop op (toTACType type3))
                             addr3))]
    else [Rules(Error "Errore")]

codeUnOp :: CmpType-> ArgOp -> State -> UnOp -> [TAC]
codeUnOp type1 addr1 state op =
    -- AssgmUn TypeTac ArgOp UnaryOp ArgOp         
    if (isAritmetic type1)            
      then [(Rules (AssgmUn (toTACType type1)
                            (gentemp state 1)
                            (unop op (toTACType type1))
                            addr1))]
      else [(Rules (Cast (gentemp state 1)
                         (toTACType (toAritm type1))
                         (toTACType type1)
                         addr1)),
            (Rules (AssgmUn (toTACType (toAritm type1))
                            (gentemp state 2)
                            (unop op (toTACType (toAritm type1)))
                            (gentemp state 1)))]

                            
codeRelOpEqDif :: CmpType-> CmpType-> [TAC] -> [TAC] -> LabelTac -> LabelTac -> ArgOp -> ArgOp -> State -> RelOp -> [TAC]
codeRelOpEqDif type1 type3 code1 code3 condTrue condFalse addr1 addr3 state op =
    if (type1 == Base BasicType_String) -- caso 1) confronto tra stringhe
      then let compare = [(Rules (GetArg addr1)),
                          (Rules (GetArg addr3)),
                          (Rules (FuncCall (gentemp state 1)
                                           BoolTypeTac
                                           (if op == IsEq then (InternalFunc "isequal")
                                                          else (InternalFunc "isdiff"))
                                           2))]
               goto = [(Rules (CondTrue (gentemp state 1) condTrue)),
                       (Rules (Goto condFalse))]
      in code1 ++ code3 ++ compare ++ goto
    else if (type1 == Base BasicType_Bool && type3 == Base BasicType_Bool) -- caso 2) confronto tra booleani
      then let bool1 = [(LRules (genlabel state 1) (Assgm BoolTypeTac (gentemp state 1) trueVal)),
                        (Rules (Goto (genlabel state 3))),
                        (LRules (genlabel state 2) (Assgm BoolTypeTac (gentemp state 1) falseVal))]
               bool3 = [(LRules (genlabel state 4) (Assgm BoolTypeTac (gentemp state 2) trueVal)),
                        (Rules (Goto (genlabel state 6))),
                        (LRules (genlabel state 5) (Assgm BoolTypeTac (gentemp state 2) falseVal))]
               comparejump = [(LRules (genlabel state 6) (CondRelation (gentemp state  0)
                                                                        (gentemp state  1)
                                                                         (relop op BoolTypeTac)
                                                                         (gentemp state  2)
                                                                         condTrue)),
                              (Rules (Goto condFalse))]
           in code1 ++ bool1 ++ (labelRules (genlabel state 3) code3) ++ bool3 ++ comparejump
      else let castcomparejump = if (type1 == type3) -- caso 3) ne' $1 ne' $3 sono booleani
                                   then [(Rules (CondRelation
                                                            (gentemp state  0) 
                                                             addr1
                                                             (relop op (toTACType type1))
                                                             addr3
                                                             condTrue)),
                                         (Rules (Goto condFalse))]
                                 else if (type1 == higherType type1 type3)
                                   then [(Rules (Cast (gentemp state  1)
                                                      (toTACType type1)
                                                      (toTACType type3)
                                                      addr3)),
                                         (Rules (CondRelation
                                                            (gentemp state  0) 
                                                              addr1
                                                             (relop op (toTACType type1))
                                                             (gentemp state  1)
                                                             condTrue)),
                                         (Rules (Goto condFalse))]
                                   else [(Rules (Cast (gentemp state  1)
                                                      (toTACType type3)
                                                      (toTACType type1)
                                                      addr1)),
                                         (Rules (CondRelation 
                                                            (gentemp state  0) 
                                                             (gentemp state  1)
                                                             (relop op (toTACType type3))
                                                             addr3
                                                             condTrue)),
                                         (Rules (Goto condFalse))]
           in code1 ++ code3 ++ castcomparejump

codeRelOpDisEq :: CmpType-> CmpType-> [TAC] -> [TAC] -> LabelTac -> LabelTac -> ArgOp -> ArgOp -> State -> RelOp -> [TAC]
codeRelOpDisEq type1 type3 code1 code3 condTrue condFalse addr1 addr3 state op =
    if (type1 == Base BasicType_String && type3 == Base BasicType_String) -- 1) confronto tra stringhe
      then let func = case op of
                        IsL   -> "isless"
                        IsLEQ -> "islesseq"
                        IsG   -> "isgreater"
                        IsGEQ -> "isgreatereq"
               comparegoto = [(Rules (GetArg addr1)),
                              (Rules (GetArg addr3)),
                                     -- FuncCall ArgOp TypeTac FuncTac Int                       
                              (Rules (FuncCall (gentemp state 1) BoolTypeTac (InternalFunc func) 2)),
                              (Rules (CondTrue (gentemp state 1) condTrue)),
                              (Rules (Goto condFalse))]
           in code1 ++ code3 ++ comparegoto
      else let castcomparejump = if (type1 == type3) -- 2a) contronto tra RExpr dello stesso tipo
                                                -- CondRelation ArgOp RelationOp ArgOp LabelTac
                                   then [(Rules (CondRelation 
                                                            (gentemp state  0) 
                                                             addr1
                                                             (relop op (toTACType type1))
                                                             addr3
                                                             condTrue)),
                                         (Rules (Goto condFalse))]
                                 else if (type1 == higherType type1 type3) -- 2b) confronto tra RExpr compatibili
                                   then [(LRules (genlabel state  1) (Cast (gentemp state 1)
                                                                              (toTACType type1)
                                                                              (toTACType type3)
                                                                              addr3)),
                                         (Rules (CondRelation
                                                            (gentemp state  0) 
                                                              addr1
                                                             (relop op (toTACType type1))
                                                             (gentemp state  1)
                                                             condTrue)),
                                         (Rules (Goto condFalse))]
                                   else [(Rules (Cast (gentemp state  1) -- 2c) confronto tra RExpr compatibili
                                                      (toTACType type3)
                                                      (toTACType type1)
                                                      addr1)),
                                         (Rules (CondRelation 
                                                            (gentemp state  0) 
                                                             (gentemp state  1)
                                                              (relop op (toTACType type1))
                                                              addr3
                                                              condTrue)),
                                         (Rules (Goto condFalse))]
           in code1 ++ code3 ++ castcomparejump


-- for STATE attribute



stateoutRelOpEqDif :: CmpType-> CmpType-> [TAC] -> [TAC] -> LabelTac -> LabelTac -> ArgOp -> ArgOp -> State -> RelOp -> State
stateoutRelOpEqDif type1 type3 code1 code3 condTrue condFalse addr1 addr3 state op =
    if (type1 == Base BasicType_String)
      then (skipState state 0 1)
    else if (type1 == Base BasicType_Bool && type3 == Base BasicType_Bool)
      then (skipState state 6 2)
    else if (type1 == type3)
      then state
      else (skipState state 0 1)
   
stateRelOpDisEq :: CmpType-> CmpType-> [TAC] -> [TAC] -> LabelTac -> LabelTac -> ArgOp -> ArgOp -> State -> RelOp -> State
stateRelOpDisEq type1 type3 code1 code3 jumpTrue jumpFalse addr1 addr3 state op =
    if (type1 ==  Base BasicType_String)
      then (skipState state 0 1)
    else if (type1 == type3)
      then state
      else (skipState state 0 1)


stateoutBinOp :: CmpType -> CmpType -> ArgOp -> ArgOp -> State -> BinOp -> State
stateoutBinOp type1 type3 addr1 addr3 state op =
    if (op == TAC.Add && type1 == Base BasicType_String)
       then skipState state 1 0
    else if (op == TAC.Add && type1 == Base BasicType_Char && type3 == Base BasicType_String)
       then skipState state 2 0
    else if (op == TAC.Add && type1 == Base BasicType_String && type3 == Base BasicType_Char)
       then skipState state 2 0
    else if (type1 == type3 && type1 == toAritm type1)
       then state
    else if (type1 == higherType type1 type3 && type1 == toAritm type1)
       then skipState state 1 0
    else if (type3 == higherType type1 type3 && type3 == toAritm type3)
       then skipState state 2 0
       else skipState state 3 0


stateoutUnOp :: CmpType -> ArgOp -> State -> UnOp -> State
stateoutUnOp type1 addr1 state op =
    if (type1 == toAritm type1)
      then (skipState state 0 1)
      else (skipState state 0 2)

--for ADDR attribute 

addrBinOp :: CmpType -> CmpType -> ArgOp -> ArgOp -> State -> BinOp -> ArgOp
addrBinOp type1 type3 addr1 addr3 state op =
    if (op == TAC.Add && type1 == Base BasicType_String && type3 == Base BasicType_String)
       then gentemp state 1
    else if (op == TAC.Add && type1 == Base BasicType_Char && type3 == Base BasicType_String)
       then gentemp state 2
    else if (op == TAC.Add && type1 == Base BasicType_String && type3 == Base BasicType_Char)
       then gentemp state 2
    else if (type1 == type3 && type1 == toAritm type1)
       then gentemp state 1
    else if (type1 == higherType type1 type3 && type1 == toAritm type1)
       then gentemp state 1
    else if (type3 == higherType type1 type3 && type3 == toAritm type3)
       then gentemp state 2
       else gentemp state 3


addrUnOp :: CmpType -> ArgOp -> State -> UnOp -> ArgOp
addrUnOp type1 addr1 state op =
    if (type1 == toAritm type1)
      then (gentemp state 1)
      else (gentemp state 2)

isArrayType :: CmpType ->Bool
isArrayType (ArrT _) = True
isArrayType _ = False

isPointerType :: CmpType ->Bool
isPointerType (PtrT _) = True
isPointerType _ = False