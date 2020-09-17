module TAC where
import Data.Char
import LexAuL
import AbsAuL

data TAC = Rules RulesTac | LRules LabelTac RulesTac
  deriving (Eq, Show)


type LabelTac = String

data RulesTac = AssgmBin TypeTac ArgOp ArgOp BinaryOp ArgOp             -- x = y op z
              | AssgmUn TypeTac ArgOp UnaryOp ArgOp                     -- x = op y
              | Assgm TypeTac ArgOp ArgOp                               -- x = y
              | Cast ArgOp TypeTac TypeTac ArgOp                        -- x =t1 cast_t1_t2 y
              | VarDecl TypeTac ArgOp                                   -- Int a ;
              | Goto LabelTac
              | CondTrue ArgOp LabelTac                                 -- if x goto y
              | CondFalse ArgOp LabelTac                                -- ifFalse x goto y
              | CondRelation ArgOp RelationOp ArgOp LabelTac            -- if (x rel y) goto z 
              | ProcCall FuncDef Int                                    -- call p, n
              | FuncCall ArgOp TypeTac FuncDef Int                        -- y =t call p, n
              | Load ArgOp                                                      
              | Func Int                                                -- func n                               
              | ArgFun ArgOp 
              | ListDimension ArgOp
              | ArrayEl TypeTac ArgOp ArgOp                             -- x =t y[i] o y[i] =t x
              | ArrayDef TypeTac ArgOp                                  -- Int pippo[3]
              | ListElem ArgOp                                          -- int a [n] = {...} 
              | ListRexp ArgOp    
              | AssignAddress ArgOp TypeTac ArgOp                       -- x =t &y
              | AssignPointer ArgOp TypeTac ArgOp                       -- x =t *y
              | DerefAssign ArgOp TypeTac ArgOp                         -- *x =t y      
              | NoOperation                                             -- operazione vuota
              | ReturnTac ArgOp                                            -- return y
              | Break LabelTac                                          -- break
              | Error String                                            -- error s
              | GetArg ArgOp                                            -- param x
              | Comment String                                          -- # s
  deriving (Eq, Show)



data TypeTac = IntTypeTac | FloatTypeTac | CharTypeTac | StringTypeTac | BoolTypeTac | PointerTypeTac | ArrayTypeTac  --array?
  deriving (Eq, Show)

trueVal  = BoolTac True  -- alias
falseVal = BoolTac False -- alias

data ArgOp = NameTac String Posn | TempTac String | IntTac Int | FloatTac Double | CharTac Char | BoolTac Bool 
  deriving (Eq, Show)


data BinaryOp = AddInt | SubInt | MulInt | ExpInt | DivInt | Module
              | AddFloat | SubFloat | MulFloat | ExpFloat | DivFloat
              | Or | And
              | PointerAdd | PointerSub
  deriving (Eq, Show)

data BinOp = Add | Sub | Mul | Exp | Div | Mod
  deriving (Eq, Show)

data UnaryOp = NegInt | NegFloat | NotBool
  deriving (Eq, Show)

data UnOp = Negation 
 deriving (Eq, Show)

data RelationOp = IsEqInt    | IsDiffInt   | IsLInt   | IsLEQInt   | IsGInt   | IsGEQInt
                | IsEqChar   | IsDiffChar  | IsLChar  | IsLEQChar  | IsGChar  | IsGEQChar
                | IsEqFloat  | IsDiffFloat | IsLFloat | IsLEQFloat | IsGFloat | IsGEQFloat
                | IsEqBool   | IsDiffBool
                | IsEqPntr   | IsDiffPntr
  deriving (Eq, Show)

data RelOp = IsEq | IsDiff | IsL | IsLEQ | IsG | IsGEQ -- per trovare la TACRelOP giusta
  deriving (Eq, Show)


type State = (Int, Int)   -- (address, label)
skipState (i,j) k l = (i + k, j + l)


gentemp :: State -> Int -> ArgOp
gentemp (n, _) i = TempTac ("t" ++ (show (i+n)))

genlabel :: State -> Int -> LabelTac
genlabel (_, l) i = "L" ++ (show (i+l))


binop :: BinOp -> TypeTac -> BinaryOp
binop TAC.Add t = case t of IntTypeTac      -> AddInt
                            FloatTypeTac    -> AddFloat
                            PointerTypeTac  -> PointerAdd
binop TAC.Sub t = case t of IntTypeTac       -> SubInt
                            FloatTypeTac     -> SubFloat
                            PointerTypeTac   -> PointerSub
binop TAC.Mul t = case t of IntTypeTac   -> MulInt
                            FloatTypeTac -> MulFloat
binop TAC.Div t = case t of IntTypeTac   -> DivInt
                            FloatTypeTac -> DivFloat
binop TAC.Exp t = case t of IntTypeTac   -> ExpInt
                            FloatTypeTac -> ExpFloat
binop TAC.Mod t = case t of IntTypeTac   -> Module

relop :: RelOp -> TypeTac -> RelationOp
relop IsEq t = case t of IntTypeTac   -> IsEqInt
                         FloatTypeTac -> IsEqFloat
                         CharTypeTac  -> IsEqChar
                         PointerTypeTac  -> IsEqPntr
relop IsDiff t = case t of IntTypeTac   -> IsDiffInt
                           FloatTypeTac -> IsDiffFloat
                           CharTypeTac  -> IsDiffChar
                           PointerTypeTac  -> IsDiffPntr
relop IsL t = case t of IntTypeTac   -> IsLInt
                        FloatTypeTac -> IsLFloat
                        CharTypeTac  -> IsLChar
relop IsLEQ t = case t of IntTypeTac   -> IsLEQInt
                          FloatTypeTac -> IsLEQFloat
                          CharTypeTac  -> IsLEQChar
relop IsG t = case t of IntTypeTac   -> IsGInt
                        FloatTypeTac -> IsGFloat
                        CharTypeTac  -> IsGChar
relop IsGEQ t = case t of IntTypeTac   -> IsGEQInt
                          FloatTypeTac -> IsGEQFloat
                          CharTypeTac  -> IsGEQChar

data FuncDef = SourceFunc String Posn
             | WriteChar 
             | WriteInt
             | WriteFloat
             | WriteBool
             | ReadChar
             | ReadInt
             | ReadFloat
             | ReadString
             | ReadBool
             | InternalFunc String -- nome funzione per le funzioni interne per fornire le stringhe
  deriving (Eq, Show)

unop :: UnOp -> TypeTac -> UnaryOp
unop Negation IntTypeTac = NegInt
unop Negation FloatTypeTac = NegFloat

printRules :: RulesTac -> String
printRules (AssgmBin t a b1 op b2) =
        (printType t) ++ " " ++ (argOpToString a) ++ " = " ++ (argOpToString b1) ++ " " ++ (binOpToString op) ++ " " ++ (argOpToString b2) 
printRules (AssgmUn t a op b) = 
        (printType t) ++ " " ++ (argOpToString a) ++ " = " ++ (unOpToString op) ++ " " ++ (argOpToString b) 
printRules (Assgm t a1 a2) = 
        (printType t) ++ " " ++ (argOpToString a1) ++ " = " ++ (argOpToString a2) 
printRules (Cast a1 t1 t2 a2) =
        (argOpToString a1) ++ " = cast_" ++ (printType t1) ++ "_" ++ (printType t2) ++" " ++ (argOpToString a2)
printRules (VarDecl t a) = 
        (printType t) ++ " " ++ (argOpToString a)
printRules (Goto l) =
        "Goto " ++ l
printRules (CondTrue a lab) = 
        "if(True) " ++ (argOpToString a) ++ " goto " ++ lab
printRules (CondFalse a lab) = 
        "if(False) " ++ (argOpToString a) ++ " goto " ++ lab
printRules (CondRelation a op b lab) = 
        "if(RelOp) " ++ (argOpToString a) ++ " " ++ (relOpToString op) ++ " " ++(argOpToString b) 
printRules (ProcCall f1 n) =
        (funcToString f1) ++ "[#arg: " ++ show n ++ "]"
printRules (FuncCall a1 t f1 n) =
        (printType t) ++ " " ++ (argOpToString a1) ++ " = " ++ (funcToString f1) ++ "[#arg: " ++ show n ++ "]"
printRules (Load a) =                                         
        "param " ++ (argOpToString a)
printRules (Func n) =
        "#arg func : " ++ show n
printRules (ArgFun a) =
        "arg func " ++ argOpToString a 
printRules (ListDimension a) =
        "dimension/index " ++ argOpToString a
printRules (ArrayEl t a b1) = 
        (printType t) ++ " " ++(argOpToString a) ++ " = " ++ (argOpToString b1) ++ "[" ++ "]"
printRules ( ArrayDef t a) =
        (printType t ) ++ " " ++ argOpToString a
printRules (ListElem a) =
        "Element " ++ argOpToString a                                          
printRules (ListRexp a) =
        "Argument " ++  argOpToString a    
printRules (AssignAddress a1 t a2) =
        (printType t) ++ " " ++ (argOpToString a1) ++ " = &" ++ (argOpToString a2)
printRules (AssignPointer a1 t a2) =
        (printType t) ++ " " ++ (argOpToString a1) ++ " = *" ++ (argOpToString a2)
printRules (DerefAssign a1 t a2) =
        (printType t) ++ " *"++ (argOpToString a1) ++ " = " ++ (argOpToString a2)
printRules (NoOperation) = 
        " "
printRules (ReturnTac a) = 
        "return " ++ (argOpToString a)
printRules (Break lab) = 
        "break goto " ++ lab
printRules (Error err) = 
        "error: " ++ err
printRules (Comment comm) = 
        "# " ++ comm

labelRules :: LabelTac -> [TAC] -> [TAC]
labelRules "" tac = tac
labelRules lab [] = [(LRules lab NoOperation)]
labelRules lab ((Rules x):xs) = ((LRules lab x):xs)
labelRules lab (y:ys) = ((LRules lab NoOperation):y:ys)


-- pretty print
prettyprintTAC :: [TAC] -> String
prettyprintTAC [] = ""
prettyprintTAC (x:xs) = tacToString x ++ prettyprintTAC xs

tacToString :: TAC -> String
tacToString (Rules x) = "\t\t" ++ printRules x ++ "\n"
tacToString (LRules lab x) = lab ++ ":\t\t" ++ (printRules x) ++ "\n"

argOpToString :: ArgOp -> String
argOpToString (NameTac name (Pn _ line col)) = name ++ "@" ++ show line ++ "," ++ show col
argOpToString (TempTac s) = s
argOpToString (IntTac i) = show i
argOpToString (FloatTac f) = show f
argOpToString (CharTac c) = "'" ++ showLitChar c "" ++ "'"
argOpToString (BoolTac b) = show b

binOpToString :: BinaryOp -> String
binOpToString AddInt = "+int"
binOpToString SubInt = "-int"
binOpToString MulInt = "*int"
binOpToString ExpInt = "^int"
binOpToString DivInt = "/int"
binOpToString Module = "%int"
binOpToString AddFloat = "+float"
binOpToString SubFloat = "-float"
binOpToString MulFloat = "*float"
binOpToString ExpFloat = "^float"
binOpToString DivFloat = "/float"
binOpToString TAC.Or = "||"
binOpToString TAC.And = "&&"
binOpToString PointerAdd = "+pointer"
binOpToString PointerSub = "-pointer"

unOpToString :: UnaryOp -> String
unOpToString NegInt = "-int"
unOpToString NegFloat = "-float"
unOpToString NotBool = "!"

relOpToString :: RelationOp -> String
relOpToString IsEqInt = "==int"
relOpToString IsDiffInt = "!=int"
relOpToString IsLInt = "<int"
relOpToString IsLEQInt = "<=int"
relOpToString IsGInt = ">int"
relOpToString IsGEQInt = ">=int"
relOpToString IsEqChar = "==char"
relOpToString IsDiffChar = "!=char"
relOpToString IsLChar = "<char"
relOpToString IsLEQChar = "<=char"
relOpToString IsGChar = ">char"
relOpToString IsGEQChar = ">=char"
relOpToString IsEqFloat = "==float"
relOpToString IsDiffFloat = "!=float"
relOpToString IsLFloat = "<float"
relOpToString IsLEQFloat = "<=float"
relOpToString IsGFloat = ">float"
relOpToString IsGEQFloat = ">=float"
relOpToString IsEqBool = "==bool"
relOpToString IsDiffBool = "==bool"
relOpToString IsEqPntr = "==pointer"
relOpToString IsDiffPntr = "!=pointer"


funcToString :: FuncDef -> String
funcToString (SourceFunc name (Pn _ line col)) = name ++ "_" ++ show line
funcToString (InternalFunc name) = name
funcToString WriteChar  = "writechar"
funcToString WriteInt   = "writeint"
funcToString WriteFloat = "writefloat"
funcToString WriteBool  = "writebool"
funcToString ReadChar   = "readchar"
funcToString ReadInt    = "readint"
funcToString ReadFloat  = "readfloat"
funcToString ReadString = "readstring"
funcToString ReadBool   = "readbool"

printType :: TypeTac -> String
printType IntTypeTac = "int"
printType FloatTypeTac = "float"
printType CharTypeTac = "char"
printType BoolTypeTac = "bool"
printType PointerTypeTac = "pointer"


--stringTAC :: TACAddr -> String -> [TAC]
--stringTAC addr s = stringTACrec addr s 0
--
--stringTACrec :: TACAddr -> String -> Int -> [TAC]
--stringTACrec addr [] i = [Instr (IndexedAssign addr (TACInt i) TACCharT (TACChar '\0'))] -- null terminated
--stringTACrec addr (x:xs) i = ( y : stringTACrec addr xs (i+1) )
--  where y = Instr (IndexedAssign addr (TACInt i) TACCharT (TACChar x))


testiamo tac= putStr (prettyprintTAC tac)
-- test =   [Rules (Assgm IntTypeTac (NameTac "j" (Pn 4 1 5)) (TempTac "t1")),Rules (Assgm IntTypeTac (TempTac "t1") (IntTac 0)),LRules "L1" (CondRelation (NameTac "j" (Pn 12 1 13)) IsLEQInt (IntTac 0) "L2"),Rules (CondTrue (TempTac "t3") "L2"),Rules (CondFalse (TempTac "t3") "L3"),LRules "L2" (Assgm IntTypeTac (NameTac "j" (Pn 22 1 23)) (TempTac "t3")),Rules (Assgm IntTypeTac (TempTac "t3") (TempTac "t3")),Rules (AssgmBin IntTypeTac (TempTac "t3") (IntTac 24) AddInt (IntTac 11)),Rules (Goto "L4"),LRules "L3" (Assgm IntTypeTac (NameTac "h" (Pn 40 1 41)) (TempTac "t3")),Rules (Assgm IntTypeTac (TempTac "t3") (IntTac 12)),Rules (Goto "L4"),LRules "L4" (Assgm IntTypeTac (NameTac "y" (Pn 54 1 55)) (TempTac "t4")),Rules (Assgm IntTypeTac (TempTac "t4") (IntTac 1))]