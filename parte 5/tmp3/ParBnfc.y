-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParBnfc where
import AbsBnfc
import LexBnfc
import ErrM

}

%name pProgram Program
%name pListPGlobl ListPGlobl
%name pPGlobl PGlobl
%name pBlock Block
%name pListStm ListStm
%name pBasicType BasicType
%name pBoolean Boolean
%name pPtrVoid PtrVoid
%name pStm Stm
%name pEBlk EBlk
%name pDecl Decl
%name pVarInit VarInit
%name pLocal Local
%name pAss Ass
%name pFunc Func
%name pFuncWrite FuncWrite
%name pFuncRead FuncRead
%name pWhile While
%name pRepeat Repeat
%name pFor For
%name pIncrement Increment
%name pIf If
%name pElse Else
%name pElseIf ElseIf
%name pListElseIf ListElseIf
%name pReturn Return
%name pRValue RValue
%name pBreak Break
%name pListRExp ListRExp
%name pFuncD FuncD
%name pParamF ParamF
%name pListParamF ListParamF
%name pModality Modality
%name pLExp LExp
%name pListDim ListDim
%name pDim Dim
%name pRExp RExp
%name pRExp2 RExp2
%name pRExp3 RExp3
%name pRExp6 RExp6
%name pRExp7 RExp7
%name pRExp8 RExp8
%name pRExp9 RExp9
%name pRExp10 RExp10
%name pRExp11 RExp11
%name pRExp12 RExp12
%name pArray Array
%name pVType VType
%name pListVType ListVType
%name pRExp1 RExp1
%name pRExp4 RExp4
%name pRExp5 RExp5
%name pRExp13 RExp13
-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype {Token}
%token
  '#' { PT _ (TS _ 1) }
  '%' { PT _ (TS _ 2) }
  '&' { PT _ (TS _ 3) }
  '(' { PT _ (TS _ 4) }
  ')' { PT _ (TS _ 5) }
  '*' { PT _ (TS _ 6) }
  '+' { PT _ (TS _ 7) }
  ',' { PT _ (TS _ 8) }
  '-' { PT _ (TS _ 9) }
  '..' { PT _ (TS _ 10) }
  '/' { PT _ (TS _ 11) }
  ';' { PT _ (TS _ 12) }
  '<' { PT _ (TS _ 13) }
  '<=' { PT _ (TS _ 14) }
  '=' { PT _ (TS _ 15) }
  '==' { PT _ (TS _ 16) }
  '>' { PT _ (TS _ 17) }
  '>=' { PT _ (TS _ 18) }
  'Bool' { PT _ (TS _ 19) }
  'Char' { PT _ (TS _ 20) }
  'Float' { PT _ (TS _ 21) }
  'Int' { PT _ (TS _ 22) }
  'String' { PT _ (TS _ 23) }
  'Void' { PT _ (TS _ 24) }
  '[' { PT _ (TS _ 25) }
  ']' { PT _ (TS _ 26) }
  '^' { PT _ (TS _ 27) }
  'and' { PT _ (TS _ 28) }
  'break' { PT _ (TS _ 29) }
  'const' { PT _ (TS _ 30) }
  'do' { PT _ (TS _ 31) }
  'else' { PT _ (TS _ 32) }
  'elseif' { PT _ (TS _ 33) }
  'end' { PT _ (TS _ 34) }
  'false' { PT _ (TS _ 35) }
  'for' { PT _ (TS _ 36) }
  'function' { PT _ (TS _ 37) }
  'if' { PT _ (TS _ 38) }
  'in' { PT _ (TS _ 39) }
  'local' { PT _ (TS _ 40) }
  'name' { PT _ (TS _ 41) }
  'nil' { PT _ (TS _ 42) }
  'not' { PT _ (TS _ 43) }
  'or' { PT _ (TS _ 44) }
  'readChar' { PT _ (TS _ 45) }
  'readFloat' { PT _ (TS _ 46) }
  'readInt' { PT _ (TS _ 47) }
  'readString' { PT _ (TS _ 48) }
  'ref' { PT _ (TS _ 49) }
  'repeat' { PT _ (TS _ 50) }
  'res' { PT _ (TS _ 51) }
  'return' { PT _ (TS _ 52) }
  'then' { PT _ (TS _ 53) }
  'true' { PT _ (TS _ 54) }
  'until' { PT _ (TS _ 55) }
  'val' { PT _ (TS _ 56) }
  'valres' { PT _ (TS _ 57) }
  'while' { PT _ (TS _ 58) }
  'writeChar' { PT _ (TS _ 59) }
  'writeFloat' { PT _ (TS _ 60) }
  'writeInt' { PT _ (TS _ 61) }
  'writeString' { PT _ (TS _ 62) }
  '{' { PT _ (TS _ 63) }
  '}' { PT _ (TS _ 64) }
  '~=' { PT _ (TS _ 65) }

L_integ  { PT _ (TI $$) }
L_doubl  { PT _ (TD $$) }
L_quoted { PT _ (TL $$) }
L_charac { PT _ (TC $$) }
L_LIdent { PT _ (T_LIdent $$) }

-- tipi per gli attributi di $$
%attributetype {AttrT}
%attribute rexp { RExp }            -- 14 prod
%attribute lexp { LExp }            -- 1 prod
%attribute lrexp { [RExp] }         -- 1 prod
%attribute program { Program }      -- 1 prod
%attribute lpglob { [PGlob] }       -- 1 prod
%attribute pglobl { PGlob }         -- 1 prod
%attribute basict  { BasicType }    -- ?? prod
%attribute modality { Modality }    -- 1 prod
%attribute vbool { Boolean }        -- ?? prod
%attribute vvoid { PtrVoid }        --?? prod
%attribute lident { LIdent }
%attribute rvalue {RValue}
%attribute stm  { Stm }             --troppe prod 
%attribute lstm { [Stm] }
%attribute blk { Block }  
%attribute eblk { EBlk }            -- 1 prod
%attribute decl { Decl }            -- 1 prod
%attribute varinit { VarInit }      -- 1 prod
%attribute local { Local }          -- 1 prod
%attribute ass { Ass }              -- 1 prod
%attribute func { Func }            -- 1 prod
%attribute funcd { FuncD }
%attribute funcwrite { FuncWrite }  -- 1 prod
%attribute funcread { FuncRead }    -- 1 prod
%attribute whilestm { While }       --1 prod                               
%attribute repeatstm { Repeat }     -- 1 prod
%attribute forstm { For }           -- 1 prod
%attribute incstm { Increment }     -- 1 prod
%attribute ifstm { If }             -- 1 prod
%attribute elsestm { Else }         -- 1 prod
%attribute elseifstm { ElseIf }     
%attribute lelseifstm { [ElseIf] }
%attribute returnstm {Return}  
%attribute breakstm {Break}
%attribute lparamf { [ParamF] }
%attribute paramf { ParamF }
%attribute dim { Dim }
%attribute ldim { [Dim] }
%attribute valint { Integer }
%attribute valdouble { Double }
%attribute valstr { String }
%attribute valchar { Char }
%attribute array { Array }
%attribute vtype { VType }
%attribute lvtype { [VType] }  

%%

Integer :: { Integer } : L_integ  { (read ( $1)) :: Integer }
Double  :: { Double }  : L_doubl  { (read ( $1)) :: Double }
String  :: { String }  : L_quoted {  $1 }
Char    :: { Char }    : L_charac { (read ( $1)) :: Char }
LIdent    :: { LIdent} : L_LIdent { LIdent ($1)}

Program :: { Program }      --TODO: modificato, controllare
Program : ListPGlobl 
        { 
            $$.program = AbsBnfc.Prog $1.lpglob;
        }

ListPGlobl :: { [PGlobl] }  
ListPGlobl : 
                PGlobl 
        {   
            $$.lpglob = (:[]) $1.pglobl; 
        }
                         
           | PGlobl ListPGlobl 
        { 
            $$.lpglob = (:) $1.pglobl $2.lpglobl; 
        }
PGlobl :: { PGlobl }    --TODO: modificato, controllare
PGlobl : Stm 
        { 
           $$.pglobl = AbsBnfc.ProgGlobB $1.stm
        }
       | FuncD 
        { 
           $$.pglobl = AbsBnfc.ProgGlobF $1.funcd
        }
                        

Block :: { Block }  --TODO: modificato, controllare
Block : ListStm 
        { 
          $$.blk = AbsBnfc.Blk $1.lstm 
        }


ListStm :: { [Stm] }      --TODO: modificato, controllare      
ListStm : Stm 
        { 
            $$.lstm = (:[]) $1.stm
        } 
       | Stm ListStm 
        { 
            $$.lstm = (:) $1.stm $2.lstm 
        }


BasicType :: { BasicType }      --TODO: rivedi
BasicType : 'Bool'
        { 
            $$.basict = AbsBnfc.BasicType_Bool;
        }
          | 'Char' 
        { 
            $$.basict = AbsBnfc.BasicType_Char;
        }
          | 'Float' 
        { 
            $$.basict = AbsBnfc.BasicType_Float;
        }
          | 'Int' 
        { 
            $$.basict = AbsBnfc.BasicType_Int;
        }
          | 'String' 
        { 
            $$.basict = AbsBnfc.BasicType_String;
        }
          | 'Void' 
        { 
            $$.basict = AbsBnfc.BasicType_Void;
        }


Boolean :: { Boolean }      --TODO: rivedi
Boolean : 'true' 
        { 
           $$.vbool = AbsBnfc.Boolean_true;
        }
        | 'false' 
        { 
           $$.vbool = AbsBnfc.Boolean_false;
        }


PtrVoid :: { PtrVoid }      --TODO: rivedi
PtrVoid : 'nil' 
        { 
          $$.vvoid = AbsBnfc.PtrType;
        }


Stm :: { Stm }          --TODO: modificato, controlla
Stm : Decl ';' 
        { 
            $$.stm = AbsBnfc.SDecl $1.decl
        }
    | Local ';' 
        { 
            $$.stm = AbsBnfc.SLocal $1.local 
        }
    | Ass ';' 
        { 
           $$.stm = AbsBnfc.SAss $1.ass
        }
    | While 
        { 
           $$.stm = AbsBnfc.SWhile $1.whilestm
        }
    | Repeat ';' 
        { 
           $$.stm = AbsBnfc.SRepeat $1.repeatstm
        }
    | For 
        { 
           $$.stm = AbsBnfc.SFor $1.forstm
        }
    | If 
        { 
           $$.stm = AbsBnfc.SIf $1.ifstm
        }
    | RExp ';' 
        { 
           $$.stm = AbsBnfc.SRExp $1.rexp 
        }
    | EBlk 
        { 
           $$.stm = AbsBnfc.SEBlk $1.eblk
        }
    | Return ';' 
        { 
           $$.stm = AbsBnfc.SReturn $1.returnstm
        }
    | Break ';' 
        { 
           $$.stm = AbsBnfc.SBreak $1.breakstm 
        }


EBlk :: { EBlk }            --TODO: rivedi $2 (?)
EBlk : 'do' Block 'end' 
        { 
            $$.eblk = AbsBnfc.EBlkS $2.blk 
        }


Decl :: { Decl }        --TODO: controlla (ok)
Decl : BasicType LExp VarInit 
        { 
           $$.decl = AbsBnfc.DeclSP $1.basict $2.lexp $3.varinit
        }


VarInit :: { VarInit }
VarInit : {- empty -} 
        { 
          $$.varinit = AbsBnfc.VarINil 
        }
        | '=' RExp 
        { 
          $$.varinit =  AbsBnfc.VarExp $2.rexp

        }


Local :: { Local }
Local : 'local' Decl 
        { 
           $$.local = AbsBnfc.DeclLocal $2.decl
        }


Ass :: { Ass }              --TODO: rivedi (ok)
Ass : LExp '=' RExp 
        { 
          $$.ass = AbsBnfc.AssD $1.lexp $3.rexp 
        }


Func :: { Func }            --TODO: rivedi (ok)
Func : FuncWrite 
        { 
          $$.func = AbsBnfc.FuncBW $1.funcwrite
        }
     | FuncRead 
        { 
          $$.func = AbsBnfc.FuncBR $1.funcread
        }
     | LIdent '(' ListRExp ')' 
        { 
          $$.func = AbsBnfc.FnctCall $1.lident $3.lrexp 
        }


FuncWrite :: { FuncWrite }          --TODO: rivedi (ok)
FuncWrite : 'writeInt' '(' RExp ')' 
        { 
           $$.funcwrite = AbsBnfc.WriteI $3.rexp 
        }
          | 'writeFloat' '(' RExp ')' 
        { 
           $$.funcwrite = AbsBnfc.WriteF $3.rexp
        }
          | 'writeChar' '(' RExp ')' 
        { 
           $$.funcwrite = AbsBnfc.WriteC $3.rexp
        }
          | 'writeString' '(' RExp ')' 
        { 
           $$.funcwrite = AbsBnfc.WriteS $3.rexp
        }


FuncRead :: { FuncRead }            --TODO: controlla (ok)
FuncRead : 'readInt' '(' ')' 
        { 
           $$.funcread = AbsBnfc.ReadI 
        }
         | 'readFloat' '(' ')' 
        { 
           $$.funcread = AbsBnfc.ReadF 
        }
         | 'readChar' '(' ')' 
        { 
           $$.funcread = AbsBnfc.ReadC 
        }
         | 'readString' '(' ')' 
        { 
           $$.funcread = AbsBnfc.ReadS 
        }


While :: { While }              --TODO: rivedi (ok)
While : 'while' RExp 'do' Block 'end' 
        { 
           $$.whilestm = AbsBnfc.LoopW $2.rexp $4.blk 
        }


Repeat :: { Repeat }            --TODO: rivedi (ok)
Repeat : 'repeat' Block 'until' RExp 
        { 
          $$.repeatstm = AbsBnfc.LoopR $2.blk $4.rexp 
        }


For :: { For }                  --TODO: modificato
For : 'for' LIdent '=' RExp ',' RExp Increment 'do' Block 'end' 
        { 
           $$.forstm = AbsBnfc.LoopF $2.lident $4.rexp $6.rexp $7.inc $9.blk 
        }
    | 'for' LIdent 'in' LIdent 'do' Block 'end' 
        { 
           $$.forstm =  AbsBnfc.LoopFE $2.lident $4.lident $6.blk 
        }


Increment :: { Increment }          --TODO: modificato
Increment : {- empty -} 
        { 
           $$.inc =  AbsBnfc.FInc (ValInt 1) -- assumiamo che sia 1, appunto 
        }
          | ',' RExp 
        { 
           $$.inc =  AbsBnfc.FInc $2.rexp
        }


If :: { If }                    --TODO: rivedi (ok)
If : 'if' RExp 'then' Block ListElseIf Else 'end' 
        { 
          $$.ifstm =   AbsBnfc.IfM $2.rexp $4.block (reverse $5.lelseifstm) $6.elsestm 
        }


Else :: { Else }                --TODO: rivedi (ok)
Else : 'else' Block 
        { 
          $$.elsestm =   AbsBnfc.ElseS $2.blk 
        }
     | {- empty -} 
        { 
          $$.elsestm =   AbsBnfc.ElseE 
        }


ElseIf :: { ElseIf }            --TODO: rivedi (ok)
ElseIf : 'elseif' RExp 'then' Block 
        { 
          $$.elseifstm =   AbsBnfc.ElseIfD $2.rexp $4.blk
        }


ListElseIf :: { [ElseIf] }      --TODO: rivedi (ok)
ListElseIf : {- empty -} 
        { 
           $$.lelseifstm =  [] 
        }
           | ListElseIf ElseIf 
        { 
           $$.lelseifstm = flip (:) $1.lelseifstm $2.elseif 
        }


Return :: { Return }            --TODO: rivedi (ok)
Return : 'return' RValue 
        { 
           $$.return = AbsBnfc.JumpR $2.rvalue 
        }


RValue :: { RValue }            --TODO: rivedi (ok)
RValue : {- empty -} 
        { 
           $$.rvalue = AbsBnfc.JumpRE 
        }
       | RExp 
        { 
           $$.rvalue = AbsBnfc.JumpRV $1.rexp
        }


Break :: { Break }              --TODO: rivedi (ok)
Break : 'break' 
        { 
          $$.breakstm = AbsBnfc.JumpB 
        }


ListRExp :: { [RExp] }          --TODO: rivedi (ok)
ListRExp : {- empty -} 
        { 
          $$.lrexp =  [] 
        }
         | RExp 
        { 
          $$.lrexp = (:[]) $1.rexp 
        }
         | RExp ',' ListRExp 
        { 
          $$.lrexp = (:) $1.rexp $3.lrexp 
        }


FuncD :: { FuncD }              --TODO: controlla (ok)
FuncD : BasicType 'function' LIdent '(' ListParamF ')' Block 'end' 
        { 
          $$.FuncD =  AbsBnfc.FnctDecl $1.basict $3.lident $5.lparamf $7.blk 
        }


ParamF :: { ParamF }            -- TODO: controlla (ok)
ParamF : Modality BasicType LExp 
        { 
          $$.paramF = AbsBnfc.ParmDeclF $1.modality $2.basict $3.lexp 
        }


ListParamF :: { [ParamF] }      --TODO: controlla (ok)
ListParamF : {- empty -} 
        { 
          $$.lparamf = [] 
        }
           | ParamF 
        { 
          $$.lparamf = (:[]) $1.paramf 
        }
           | ParamF ',' ListParamF 
        { 
          $$.lparamf = (:) $1.paramf $3.lparamf 
        }


Modality :: { Modality }
Modality : {- empty -} { AbsBnfc.Modality1 }
         | 'val' { $$.modality = AbsBnfc.Modality_val }
         | 'ref' { $$.modality =  AbsBnfc.Modality_ref }
         | 'const' { $$.modality =  AbsBnfc.Modality_const }
         | 'res' { $$.modality =  AbsBnfc.Modality_res }
         | 'valres' { $$.modality =  AbsBnfc.Modality_valres }
         | 'name' { $$.modality =  AbsBnfc.Modality_name }


LExp :: { LExp }        --TODO: rivedi (ok)
LExp : LIdent { $$.lexp = AbsBnfc.LExpS $1.lident }
     | '*' LExp { $$.lexp = AbsBnfc.LExpDR $2.lexp }
     | LIdent ListDim { $$.lexp = AbsBnfc.LExpA $1.lident $2.ldim }


ListDim :: { [Dim] }                    --TODO: modificato
ListDim : Dim 
        { 
          $$.ldim =  (:[]) $1.dim 
        }
         | Dim ListDim 
        { 
          $$.ldim = (:) $1.dim $2.ldim 
        }


Dim :: { Dim }          --TODO: rivedi (?)
Dim : '[' Integer ']' 
        { 
           $$.dim = AbsBnfc.Dims $2.valint     --rivedi (,ValInt)? da dummy scarico? 
        }


RExp :: { RExp }
RExp : RExp 'or' RExp1 
        { 
           $$.rexp = AbsBnfc.Or $1.rexp $3.rexp;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
     | RExp1 'and' RExp2 
        { 
           $$.rexp = AbsBnfc.And $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
     | RExp1 
        { 
           $$.rexp = $1.rexp;
{-          $1.env = $$.env;
           $$.tipo = $1.tipo;
           $$.err = $1.err;
-}
        }


RExp2 :: { RExp }       --TODO: rivedi (ok)
RExp2 : 'not' RExp3 
        { 
           $$.rexp = AbsBnfc.Not $2.rexp;
{-           $$.tipo = BasicType_Bool;
           $2.env = $$.env;
           $$.err = (checkIsBool $2.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $2))
            );
-}
        } 
        | RExp3 
        { 
           $$.rexp = $1.rexp;
{-
           $1.env = $$.env;
           $$.tipo = $1.tipo;
           $$.err = $1.err;
-}
        }


RExp3 :: { RExp }
RExp3 : RExp3 '==' RExp5 
        { 
           $$.rexp = AbsBnfc.Eq $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp3 '~=' RExp5 
        { 
           $$.rexp = AbsBnfc.Neq $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp3 '<' RExp5 
        { 
           $$.rexp = AbsBnfc.Lt $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp3 '<=' RExp5 
        { 
           $$.rexp = AbsBnfc.LtE $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp3 '>' RExp5 
        { 
           $$.rexp = AbsBnfc.Gt $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp3 '>=' RExp5 
        { 
           $$.rexp = AbsBnfc.GtE $1.rexp $3.rexp ;
{-           $$.tipo = BasicType_Bool;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkBothBool $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-} 
        }
      | RExp4 { 
          $$.rexp = $1.rexp;
{-          $1.env = $$.env;
          $$.tipo = $1.tipo; 
          $$.err = $1.err;
-}
          }


RExp6 :: { RExp }
RExp6 : RExp6 '+' RExp7 
        { 
           $$.rexp = AbsBnfc.Add $1.rexp $3.rexp;
{-           $$.tipo = (supType $1.tipo $2.tipo) ;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkNumeric $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp6 '-' RExp7 
        { 
           $$.rexp = AbsBnfc.Sub $1.rexp $3.rexp;
{-           $$.tipo = (supType $1.tipo $2.tipo) ;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkNumeric $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp7 
        { 
          $$.rexp = $1.rexp; 
{-          $1.env = $$.env;
          $$.tipo = $1.tipo; 
          $$.err = $1.err;
-}
        }


RExp7 :: { RExp }
RExp7 : RExp7 '*' RExp8 
        { 
           $$.rexp =  AbsBnfc.Mul $1.rexp $3.rexp;
{-           $$.tipo = (supType $1.tipo $2.tipo) ;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkNumeric $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp7 '/' RExp8 
        { 
           $$.rexp = AbsBnfc.Div $1.rexp $3.rexp;
{-           $$.tipo = (supType $1.tipo $2.tipo) ;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkNotZero $3.tipo) ++ (checkNumeric $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $3))
            );
-}
        }
      | RExp7 '%' RExp8 
        { 
           $$.rexp =  AbsBnfc.Rem $1.rexp $3.rexp;
{-           $$.tipo = (supType $1.tipo $2.tipo) ;
           $1.env = $$.env;
           $3.env = $$.env;
           $$.err = (checkNotZero $3.tipo) ++ (checkInt $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3 ))
            );
-}
        }
      | RExp8 
        { 
          $$.rexp = $1.rexp;
{-
          $1.env = $$.env;
          $$.tipo = $1.tipo; 
          $$.err = $1.err;
-}
        }


RExp8 :: { RExp }
RExp8 : RExp9 '^' RExp8 
        { 
          $$.rexp = AbsBnfc.Pow $1.rexp $3.rexp;
{-          $$.tipo = (supType $1.tipo $2.tipo) ;
          $1.env = $$.env;
          $3.env = $$.env;
          $$.err = (checkBothZero $1.tipo $3.tipo) ++ (checkNumeric $1.tipo $3.tipo);
          where ( 
            if ($$.err == "") 
               then (Ok())
            else (Bad $ (prntErr $$.err $1 $3))
            );
-}
        } 
      | RExp9 
        { 
          $$.rexp = $1.rexp;
{-          $1.env = $$.env; 
          $$.tipo = $1.tipo; 
          $$.err = $1.err;
-}
        }


RExp9 :: { RExp }
RExp9 : '-' RExp10 
        { 
          $$.rexp = AbsBnfc.Neg $2.rexp;
{-          $$.tipo = $2.tipo;
          $2.env = $$.env;
          $$.err = (checkSingleNumeric $2.tipo);
-}
        } 
      | RExp10 
        { 
          $$.rexp = $1.rexp;
{-          $$.tipo = $1.tipo;
          $1.env = $$.env;
          $$.err = $1.err;
-}
        }


RExp10 :: { RExp }      --TODO: controlla (ok)
RExp10 : Func 
        { 
           $$.rexp = AbsBnfc.FCall $1.func ;

        }
       | RExp10 '..' RExp11 
        { 
            $$.rexp = AbsBnfc.FStrCnt $1.rexp $3.rexp 
        }
       | '#' RExp11 
        { 
            $$.rexp = AbsBnfc.FLen $2.rexp ; 
        }
       | RExp11 
        { 
           $$.rexp =  $1.rexp ; 
        }


RExp11 :: { RExp }
RExp11 : Integer 
        { 
            $$.rexp = AbsBnfc.ValInt $1.valint;        --TODO: (ok) controlla la merda in $1 
{-            $$.tipo = BasicType_Int;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | LExp 
        { 
            $$.rexp = AbsBnfc.ValVariable $1.lexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | '&' LExp 
        { 
            $$.rexp = AbsBnfc.ValRef $2.lexp; --TODO: (?) controlla la merda in $2
{-            $$.tipo = $2.tipo;
            $2.env = $$.env;
            $$.err = "";
-}
        }
       | Double 
        { 
            $$.rexp = AbsBnfc.ValDouble $1.valdouble ; --TODO: (ok) controlla la merda in $1
{-            $$.tipo = BasicType_Float;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | String 
        { 
            $$.rexp =  AbsBnfc.ValString $1.valstr ; --TODO:(oK) controlla la merda in $1
{-            $$.tipo = BasicType_String;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | Char 
        { 
            $$.rexp = AbsBnfc.ValChar $1.valchar ; --TODO:(OK) controlla la merda in $1
{-            $$.tipo = BasicType_Char;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | Boolean 
        { 
            $$.RExp = AbsBnfc.ValBoolean $1.vbool ; --TODO: (OK) controlla la merda in $1
{-            $$.tipo = BasicType_Bool;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | PtrVoid 
        { 
            $$.rexp = AbsBnfc.ValPtr $1.vvoid ; --TODO: (OK) controlla la merda in $1
{-            $$.tipo = BasicType_Void;
            $1.env = $$.env;
            $$.err = "";
-}
        }
       | RExp12 
        { 
            $$.rexp = $1.rexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = $1.err;
-}
        }


RExp12 :: { RExp }
RExp12 : '{' Array '}' 
        { 
            $$.rexp = AbsBnfc.ValMArr $2.array ;  --TODO:(OK) controlla la merda in $2 (valMArr?)
{-            $$.tipo = $2.tipo;
            $2.env = $$.env;
            $$.err = $2.err;
-}
        } 
        | RExp13 
        { 
            $$.rexp = $1.rexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = $1.err;
-}
        }


Array :: { Array }
Array : '{' Array '}' ',' Array 
        { 
            $$.array = AbsBnfc.ArrayV0 $2.array $5.array;   --TODO: (oK) controlla la merda in $2..
{-
            $2.env = $$.env;
            $5.env = $$.env;
-}            
        }
      | '{' Array '}'   --TODO: (OK) implementa
        { 
            $$.array = AbsBnfc.ArrayV1 $2.array ;
{-            $$.tipo = $2.tipo;
            $2.env = $$.env;
            $$.err = $2.err;
-}
        }
      | ListVType        --TODO: (OK) implementa
        { 
            $$.array = AbsBnfc.ArrayV2 $1.lvtype ;
 {-           $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = (checkTypeSubElements );
-}
        }


VType :: { VType }      --una dummy qui?
VType : Boolean { $$.vtype = AbsBnfc.VTypeBoolean $1.vbool }
      | Char { $$.vtype =  AbsBnfc.VTypeChar $1.valchar }
      | Double { $$.vtype =  AbsBnfc.VTypeDouble $1.valdouble }
      | Integer { $$.vtype =  AbsBnfc.VTypeInteger $1.valint }
      | String { $$.vtype =  AbsBnfc.VTypeString $1.valstr }
      | PtrVoid { $$.vtype =  AbsBnfc.VTypePtrVoid $1.vvoid }
      | {- empty -} { $$.vtype =  AbsBnfc.VType1 }


ListVType :: { [VType] }    --TODO: (OK) implementa
ListVType : VType 
        { 
            $$.lvtype = (:[]) $1.vtype 
        } 
        | VType ',' ListVType 
        { 
            $$.lvtype = (:) $1.vtype $3.lvtype 
        }


RExp1 :: { RExp }
RExp1 : RExp2 
        { 
            $$.rexp = $1.rexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = $1.err;
-}
        }


RExp4 :: { RExp }
RExp4 : RExp5 
        { 
            $$.rexp = $1.rexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = $1.err; 
-}
        }


RExp5 :: { RExp }
RExp5 : RExp6 
        { 
            $$.rexp = $1.rexp ;
{-            $$.tipo = $1.tipo;
            $1.env = $$.env;
            $$.err = $1.err;
-}
        }


RExp13 :: { RExp }
RExp13 : '(' RExp ')' 
        { 
            $$.rexp = $2.rexp ;
{-            $$.tipo = $2.tipo;
            $2.env = $$.env;
            $$.err = $2.err; 
-}
        }


{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
}

