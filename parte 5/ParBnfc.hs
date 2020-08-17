{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParBnfc where
import AbsBnfc
import LexBnfc
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn20 (Integer)
	| HappyAbsSyn21 (Double)
	| HappyAbsSyn22 (String)
	| HappyAbsSyn23 (DivStm)
	| HappyAbsSyn24 (NameVar)
	| HappyAbsSyn25 (BoolOp)
	| HappyAbsSyn26 (Operator)
	| HappyAbsSyn27 (LongStrings)
	| HappyAbsSyn28 (Table)
	| HappyAbsSyn29 (Program)
	| HappyAbsSyn30 (Block)
	| HappyAbsSyn31 ([Statement])
	| HappyAbsSyn32 (Statement)
	| HappyAbsSyn33 (While)
	| HappyAbsSyn34 (Repeat)
	| HappyAbsSyn35 (If)
	| HappyAbsSyn36 (Else)
	| HappyAbsSyn37 (Elseif)
	| HappyAbsSyn38 ([Elseif])
	| HappyAbsSyn39 ([Else])
	| HappyAbsSyn40 (Exp)
	| HappyAbsSyn41 (BoolExp)
	| HappyAbsSyn42 (TBool)
	| HappyAbsSyn43 ([Element])
	| HappyAbsSyn44 (Element)
	| HappyAbsSyn45 (Value)

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110,
 action_111,
 action_112,
 action_113 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_17,
 happyReduce_18,
 happyReduce_19,
 happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45,
 happyReduce_46,
 happyReduce_47,
 happyReduce_48,
 happyReduce_49,
 happyReduce_50,
 happyReduce_51,
 happyReduce_52,
 happyReduce_53,
 happyReduce_54,
 happyReduce_55,
 happyReduce_56,
 happyReduce_57,
 happyReduce_58,
 happyReduce_59,
 happyReduce_60,
 happyReduce_61,
 happyReduce_62,
 happyReduce_63,
 happyReduce_64,
 happyReduce_65,
 happyReduce_66,
 happyReduce_67,
 happyReduce_68 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,272) ([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,1032,0,0,0,2048,0,0,0,32768,0,0,0,0,64,0,0,0,1024,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,1216,0,0,0,49696,4,0,0,8192,2,0,0,0,49152,1,0,0,0,448,0,0,0,49696,97,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,1024,0,0,0,0,8,0,0,0,0,0,0,0,0,49696,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49696,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49696,4,0,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2240,4,0,0,0,0,0,0,0,2240,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53792,101,0,0,0,64,0,0,0,2,0,0,0,0,4,0,0,0,256,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,1216,0,0,0,0,0,0,0,8192,1218,0,0,0,0,0,0,0,0,448,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49696,4,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,448,0,0,0,2240,4,0,0,0,32,0,0,16384,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,8192,25026,0,0,0,0,0,0,0,0,0,0,0,0,20,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","%start_pBlock","%start_pListStatement","%start_pStatement","%start_pWhile","%start_pRepeat","%start_pIf","%start_pElse","%start_pElseif","%start_pListElseif","%start_pListElse","%start_pExp","%start_pBoolExp","%start_pTBool","%start_pListElement","%start_pElement","%start_pValue","Integer","Double","String","DivStm","NameVar","BoolOp","Operator","LongStrings","Table","Program","Block","ListStatement","Statement","While","Repeat","If","Else","Elseif","ListElseif","ListElse","Exp","BoolExp","TBool","ListElement","Element","Value","','","'='","'['","']'","'do'","'else'","'elseif'","'end'","'false'","'if'","'repeat'","'then'","'true'","'until'","'while'","'{'","'}'","L_integ","L_doubl","L_quoted","L_DivStm","L_NameVar","L_BoolOp","L_Operator","L_LongStrings","L_Table","%eof"]
        bit_start = st * 72
        bit_end = (st + 1) * 72
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..71]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (29) = happyGoto action_67
action_0 (30) = happyGoto action_68
action_0 (31) = happyGoto action_66
action_0 _ = happyReduce_29

action_1 (30) = happyGoto action_65
action_1 (31) = happyGoto action_66
action_1 _ = happyReduce_29

action_2 (31) = happyGoto action_64
action_2 _ = happyReduce_29

action_3 (55) = happyShift action_54
action_3 (56) = happyShift action_56
action_3 (60) = happyShift action_58
action_3 (67) = happyShift action_45
action_3 (24) = happyGoto action_59
action_3 (32) = happyGoto action_60
action_3 (33) = happyGoto action_61
action_3 (34) = happyGoto action_62
action_3 (35) = happyGoto action_63
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (60) = happyShift action_58
action_4 (33) = happyGoto action_57
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (56) = happyShift action_56
action_5 (34) = happyGoto action_55
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (55) = happyShift action_54
action_6 (35) = happyGoto action_53
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (51) = happyShift action_52
action_7 (36) = happyGoto action_51
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (52) = happyShift action_50
action_8 (37) = happyGoto action_49
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (38) = happyGoto action_48
action_9 _ = happyReduce_43

action_10 (39) = happyGoto action_47
action_10 _ = happyReduce_45

action_11 (63) = happyShift action_18
action_11 (64) = happyShift action_28
action_11 (67) = happyShift action_45
action_11 (20) = happyGoto action_39
action_11 (21) = happyGoto action_40
action_11 (24) = happyGoto action_41
action_11 (40) = happyGoto action_46
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (54) = happyShift action_26
action_12 (58) = happyShift action_27
action_12 (63) = happyShift action_18
action_12 (64) = happyShift action_28
action_12 (67) = happyShift action_45
action_12 (20) = happyGoto action_39
action_12 (21) = happyGoto action_40
action_12 (24) = happyGoto action_41
action_12 (40) = happyGoto action_42
action_12 (41) = happyGoto action_43
action_12 (42) = happyGoto action_44
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (54) = happyShift action_26
action_13 (58) = happyShift action_27
action_13 (42) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (63) = happyShift action_18
action_14 (64) = happyShift action_28
action_14 (65) = happyShift action_29
action_14 (20) = happyGoto action_32
action_14 (21) = happyGoto action_33
action_14 (22) = happyGoto action_34
action_14 (43) = happyGoto action_36
action_14 (44) = happyGoto action_37
action_14 _ = happyReduce_57

action_15 (63) = happyShift action_18
action_15 (64) = happyShift action_28
action_15 (65) = happyShift action_29
action_15 (20) = happyGoto action_32
action_15 (21) = happyGoto action_33
action_15 (22) = happyGoto action_34
action_15 (44) = happyGoto action_35
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (54) = happyShift action_26
action_16 (58) = happyShift action_27
action_16 (63) = happyShift action_18
action_16 (64) = happyShift action_28
action_16 (65) = happyShift action_29
action_16 (70) = happyShift action_30
action_16 (71) = happyShift action_31
action_16 (20) = happyGoto action_19
action_16 (21) = happyGoto action_20
action_16 (22) = happyGoto action_21
action_16 (27) = happyGoto action_22
action_16 (28) = happyGoto action_23
action_16 (42) = happyGoto action_24
action_16 (45) = happyGoto action_25
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (63) = happyShift action_18
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_17

action_19 _ = happyReduce_65

action_20 _ = happyReduce_66

action_21 _ = happyReduce_63

action_22 _ = happyReduce_64

action_23 _ = happyReduce_68

action_24 _ = happyReduce_67

action_25 (72) = happyAccept
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_56

action_27 _ = happyReduce_55

action_28 _ = happyReduce_18

action_29 _ = happyReduce_19

action_30 _ = happyReduce_24

action_31 _ = happyReduce_25

action_32 _ = happyReduce_60

action_33 _ = happyReduce_61

action_34 _ = happyReduce_62

action_35 (72) = happyAccept
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (72) = happyAccept
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (46) = happyShift action_85
action_37 _ = happyReduce_58

action_38 (72) = happyAccept
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_47

action_40 _ = happyReduce_48

action_41 _ = happyReduce_49

action_42 (68) = happyShift action_84
action_42 (69) = happyShift action_82
action_42 (25) = happyGoto action_83
action_42 (26) = happyGoto action_81
action_42 _ = happyReduce_51

action_43 (72) = happyAccept
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_52

action_45 _ = happyReduce_21

action_46 (69) = happyShift action_82
action_46 (72) = happyAccept
action_46 (26) = happyGoto action_81
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (51) = happyShift action_52
action_47 (72) = happyAccept
action_47 (36) = happyGoto action_80
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (52) = happyShift action_50
action_48 (72) = happyAccept
action_48 (37) = happyGoto action_79
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (72) = happyAccept
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (54) = happyShift action_26
action_50 (58) = happyShift action_27
action_50 (63) = happyShift action_18
action_50 (64) = happyShift action_28
action_50 (67) = happyShift action_45
action_50 (20) = happyGoto action_39
action_50 (21) = happyGoto action_40
action_50 (24) = happyGoto action_41
action_50 (40) = happyGoto action_42
action_50 (41) = happyGoto action_78
action_50 (42) = happyGoto action_44
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (72) = happyAccept
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (30) = happyGoto action_77
action_52 (31) = happyGoto action_66
action_52 _ = happyReduce_29

action_53 (72) = happyAccept
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (54) = happyShift action_26
action_54 (58) = happyShift action_27
action_54 (63) = happyShift action_18
action_54 (64) = happyShift action_28
action_54 (67) = happyShift action_45
action_54 (20) = happyGoto action_39
action_54 (21) = happyGoto action_40
action_54 (24) = happyGoto action_41
action_54 (40) = happyGoto action_42
action_54 (41) = happyGoto action_76
action_54 (42) = happyGoto action_44
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (72) = happyAccept
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (30) = happyGoto action_75
action_56 (31) = happyGoto action_66
action_56 _ = happyReduce_29

action_57 (72) = happyAccept
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (54) = happyShift action_26
action_58 (58) = happyShift action_27
action_58 (63) = happyShift action_18
action_58 (64) = happyShift action_28
action_58 (67) = happyShift action_45
action_58 (20) = happyGoto action_39
action_58 (21) = happyGoto action_40
action_58 (24) = happyGoto action_41
action_58 (40) = happyGoto action_42
action_58 (41) = happyGoto action_74
action_58 (42) = happyGoto action_44
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (47) = happyShift action_72
action_59 (48) = happyShift action_73
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (72) = happyAccept
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_35

action_62 _ = happyReduce_36

action_63 _ = happyReduce_37

action_64 (55) = happyShift action_54
action_64 (56) = happyShift action_56
action_64 (60) = happyShift action_58
action_64 (67) = happyShift action_45
action_64 (72) = happyAccept
action_64 (24) = happyGoto action_59
action_64 (32) = happyGoto action_70
action_64 (33) = happyGoto action_61
action_64 (34) = happyGoto action_62
action_64 (35) = happyGoto action_63
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (72) = happyAccept
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (55) = happyShift action_54
action_66 (56) = happyShift action_56
action_66 (60) = happyShift action_58
action_66 (66) = happyShift action_71
action_66 (67) = happyShift action_45
action_66 (23) = happyGoto action_69
action_66 (24) = happyGoto action_59
action_66 (32) = happyGoto action_70
action_66 (33) = happyGoto action_61
action_66 (34) = happyGoto action_62
action_66 (35) = happyGoto action_63
action_66 _ = happyReduce_27

action_67 (72) = happyAccept
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_26

action_69 (31) = happyGoto action_100
action_69 _ = happyReduce_29

action_70 _ = happyReduce_30

action_71 _ = happyReduce_20

action_72 (54) = happyShift action_26
action_72 (58) = happyShift action_27
action_72 (61) = happyShift action_99
action_72 (63) = happyShift action_18
action_72 (64) = happyShift action_28
action_72 (65) = happyShift action_29
action_72 (67) = happyShift action_45
action_72 (70) = happyShift action_30
action_72 (71) = happyShift action_31
action_72 (20) = happyGoto action_95
action_72 (21) = happyGoto action_96
action_72 (22) = happyGoto action_21
action_72 (24) = happyGoto action_41
action_72 (27) = happyGoto action_22
action_72 (28) = happyGoto action_23
action_72 (40) = happyGoto action_97
action_72 (42) = happyGoto action_24
action_72 (45) = happyGoto action_98
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (63) = happyShift action_18
action_73 (20) = happyGoto action_94
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (50) = happyShift action_93
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (59) = happyShift action_92
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (57) = happyShift action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_41

action_78 (57) = happyShift action_90
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_44

action_80 _ = happyReduce_46

action_81 (63) = happyShift action_18
action_81 (64) = happyShift action_28
action_81 (67) = happyShift action_45
action_81 (20) = happyGoto action_39
action_81 (21) = happyGoto action_40
action_81 (24) = happyGoto action_41
action_81 (40) = happyGoto action_89
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_23

action_83 (54) = happyShift action_26
action_83 (58) = happyShift action_27
action_83 (63) = happyShift action_18
action_83 (64) = happyShift action_28
action_83 (67) = happyShift action_45
action_83 (20) = happyGoto action_39
action_83 (21) = happyGoto action_40
action_83 (24) = happyGoto action_41
action_83 (40) = happyGoto action_87
action_83 (42) = happyGoto action_88
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_22

action_85 (63) = happyShift action_18
action_85 (64) = happyShift action_28
action_85 (65) = happyShift action_29
action_85 (20) = happyGoto action_32
action_85 (21) = happyGoto action_33
action_85 (22) = happyGoto action_34
action_85 (43) = happyGoto action_86
action_85 (44) = happyGoto action_37
action_85 _ = happyReduce_57

action_86 _ = happyReduce_59

action_87 (69) = happyShift action_82
action_87 (26) = happyGoto action_81
action_87 _ = happyReduce_53

action_88 _ = happyReduce_54

action_89 (69) = happyShift action_82
action_89 (26) = happyGoto action_81
action_89 _ = happyReduce_50

action_90 (30) = happyGoto action_106
action_90 (31) = happyGoto action_66
action_90 _ = happyReduce_29

action_91 (30) = happyGoto action_105
action_91 (31) = happyGoto action_66
action_91 _ = happyReduce_29

action_92 (54) = happyShift action_26
action_92 (58) = happyShift action_27
action_92 (63) = happyShift action_18
action_92 (64) = happyShift action_28
action_92 (67) = happyShift action_45
action_92 (20) = happyGoto action_39
action_92 (21) = happyGoto action_40
action_92 (24) = happyGoto action_41
action_92 (40) = happyGoto action_42
action_92 (41) = happyGoto action_104
action_92 (42) = happyGoto action_44
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (30) = happyGoto action_103
action_93 (31) = happyGoto action_66
action_93 _ = happyReduce_29

action_94 (49) = happyShift action_102
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (51) = happyReduce_65
action_95 (52) = happyReduce_65
action_95 (53) = happyReduce_65
action_95 (55) = happyReduce_65
action_95 (56) = happyReduce_65
action_95 (59) = happyReduce_65
action_95 (60) = happyReduce_65
action_95 (66) = happyReduce_65
action_95 (67) = happyReduce_65
action_95 (72) = happyReduce_65
action_95 _ = happyReduce_47

action_96 (51) = happyReduce_66
action_96 (52) = happyReduce_66
action_96 (53) = happyReduce_66
action_96 (55) = happyReduce_66
action_96 (56) = happyReduce_66
action_96 (59) = happyReduce_66
action_96 (60) = happyReduce_66
action_96 (66) = happyReduce_66
action_96 (67) = happyReduce_66
action_96 (72) = happyReduce_66
action_96 _ = happyReduce_48

action_97 (69) = happyShift action_82
action_97 (26) = happyGoto action_81
action_97 _ = happyReduce_34

action_98 _ = happyReduce_31

action_99 (63) = happyShift action_18
action_99 (64) = happyShift action_28
action_99 (65) = happyShift action_29
action_99 (20) = happyGoto action_32
action_99 (21) = happyGoto action_33
action_99 (22) = happyGoto action_34
action_99 (43) = happyGoto action_101
action_99 (44) = happyGoto action_37
action_99 _ = happyReduce_57

action_100 (55) = happyShift action_54
action_100 (56) = happyShift action_56
action_100 (60) = happyShift action_58
action_100 (67) = happyShift action_45
action_100 (24) = happyGoto action_59
action_100 (32) = happyGoto action_70
action_100 (33) = happyGoto action_61
action_100 (34) = happyGoto action_62
action_100 (35) = happyGoto action_63
action_100 _ = happyReduce_28

action_101 (62) = happyShift action_110
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (47) = happyShift action_109
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (53) = happyShift action_108
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_39

action_105 (38) = happyGoto action_107
action_105 _ = happyReduce_43

action_106 _ = happyReduce_42

action_107 (52) = happyShift action_50
action_107 (37) = happyGoto action_79
action_107 (39) = happyGoto action_112
action_107 _ = happyReduce_45

action_108 _ = happyReduce_38

action_109 (54) = happyShift action_26
action_109 (58) = happyShift action_27
action_109 (63) = happyShift action_18
action_109 (64) = happyShift action_28
action_109 (65) = happyShift action_29
action_109 (70) = happyShift action_30
action_109 (71) = happyShift action_31
action_109 (20) = happyGoto action_19
action_109 (21) = happyGoto action_20
action_109 (22) = happyGoto action_21
action_109 (27) = happyGoto action_22
action_109 (28) = happyGoto action_23
action_109 (42) = happyGoto action_24
action_109 (45) = happyGoto action_111
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_32

action_111 _ = happyReduce_33

action_112 (51) = happyShift action_52
action_112 (53) = happyShift action_113
action_112 (36) = happyGoto action_80
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_40

happyReduce_17 = happySpecReduce_1  20 happyReduction_17
happyReduction_17 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn20
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  21 happyReduction_18
happyReduction_18 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn21
		 ((read ( happy_var_1)) :: Double
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  22 happyReduction_19
happyReduction_19 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  23 happyReduction_20
happyReduction_20 (HappyTerminal (PT _ (T_DivStm happy_var_1)))
	 =  HappyAbsSyn23
		 (DivStm (happy_var_1)
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  24 happyReduction_21
happyReduction_21 (HappyTerminal (PT _ (T_NameVar happy_var_1)))
	 =  HappyAbsSyn24
		 (NameVar (happy_var_1)
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  25 happyReduction_22
happyReduction_22 (HappyTerminal (PT _ (T_BoolOp happy_var_1)))
	 =  HappyAbsSyn25
		 (BoolOp (happy_var_1)
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  26 happyReduction_23
happyReduction_23 (HappyTerminal (PT _ (T_Operator happy_var_1)))
	 =  HappyAbsSyn26
		 (Operator (happy_var_1)
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  27 happyReduction_24
happyReduction_24 (HappyTerminal (PT _ (T_LongStrings happy_var_1)))
	 =  HappyAbsSyn27
		 (LongStrings (happy_var_1)
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  28 happyReduction_25
happyReduction_25 (HappyTerminal (PT _ (T_Table happy_var_1)))
	 =  HappyAbsSyn28
		 (Table (happy_var_1)
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  29 happyReduction_26
happyReduction_26 (HappyAbsSyn30  happy_var_1)
	 =  HappyAbsSyn29
		 (AbsBnfc.Prog happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  30 happyReduction_27
happyReduction_27 (HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (AbsBnfc.Blk (reverse happy_var_1)
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  30 happyReduction_28
happyReduction_28 (HappyAbsSyn31  happy_var_3)
	(HappyAbsSyn23  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn30
		 (AbsBnfc.BlkDiv (reverse happy_var_1) happy_var_2 (reverse happy_var_3)
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_0  31 happyReduction_29
happyReduction_29  =  HappyAbsSyn31
		 ([]
	)

happyReduce_30 = happySpecReduce_2  31 happyReduction_30
happyReduction_30 (HappyAbsSyn32  happy_var_2)
	(HappyAbsSyn31  happy_var_1)
	 =  HappyAbsSyn31
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  32 happyReduction_31
happyReduction_31 (HappyAbsSyn45  happy_var_3)
	_
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsBnfc.Stm happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 5 32 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn43  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (AbsBnfc.StmArr happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 6 32 happyReduction_33
happyReduction_33 ((HappyAbsSyn45  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn24  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn32
		 (AbsBnfc.StmTab happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_3  32 happyReduction_34
happyReduction_34 (HappyAbsSyn40  happy_var_3)
	_
	(HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsBnfc.StmExp happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  32 happyReduction_35
happyReduction_35 (HappyAbsSyn33  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsBnfc.StmWhile happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  32 happyReduction_36
happyReduction_36 (HappyAbsSyn34  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsBnfc.StmRepeat happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  32 happyReduction_37
happyReduction_37 (HappyAbsSyn35  happy_var_1)
	 =  HappyAbsSyn32
		 (AbsBnfc.StmIf happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 33 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn30  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn41  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn33
		 (AbsBnfc.LoopW happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 4 34 happyReduction_39
happyReduction_39 ((HappyAbsSyn41  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn30  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn34
		 (AbsBnfc.LoopR happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 7 35 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn39  happy_var_6) `HappyStk`
	(HappyAbsSyn38  happy_var_5) `HappyStk`
	(HappyAbsSyn30  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn41  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn35
		 (AbsBnfc.LoopIf happy_var_2 happy_var_4 (reverse happy_var_5) (reverse happy_var_6)
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  36 happyReduction_41
happyReduction_41 (HappyAbsSyn30  happy_var_2)
	_
	 =  HappyAbsSyn36
		 (AbsBnfc.Els happy_var_2
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 4 37 happyReduction_42
happyReduction_42 ((HappyAbsSyn30  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn41  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn37
		 (AbsBnfc.ElseIf happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_0  38 happyReduction_43
happyReduction_43  =  HappyAbsSyn38
		 ([]
	)

happyReduce_44 = happySpecReduce_2  38 happyReduction_44
happyReduction_44 (HappyAbsSyn37  happy_var_2)
	(HappyAbsSyn38  happy_var_1)
	 =  HappyAbsSyn38
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_0  39 happyReduction_45
happyReduction_45  =  HappyAbsSyn39
		 ([]
	)

happyReduce_46 = happySpecReduce_2  39 happyReduction_46
happyReduction_46 (HappyAbsSyn36  happy_var_2)
	(HappyAbsSyn39  happy_var_1)
	 =  HappyAbsSyn39
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  40 happyReduction_47
happyReduction_47 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsBnfc.ExprssI happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  40 happyReduction_48
happyReduction_48 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsBnfc.ExprssD happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  40 happyReduction_49
happyReduction_49 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsBnfc.ExprssVar happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  40 happyReduction_50
happyReduction_50 (HappyAbsSyn40  happy_var_3)
	(HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn40
		 (AbsBnfc.ExprssOp happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  41 happyReduction_51
happyReduction_51 (HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn41
		 (AbsBnfc.ExpB happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  41 happyReduction_52
happyReduction_52 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn41
		 (AbsBnfc.ExpB1 happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  41 happyReduction_53
happyReduction_53 (HappyAbsSyn40  happy_var_3)
	(HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn41
		 (AbsBnfc.ExpB2 happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  41 happyReduction_54
happyReduction_54 (HappyAbsSyn42  happy_var_3)
	(HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn40  happy_var_1)
	 =  HappyAbsSyn41
		 (AbsBnfc.ExpB3 happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  42 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn42
		 (AbsBnfc.VTrue
	)

happyReduce_56 = happySpecReduce_1  42 happyReduction_56
happyReduction_56 _
	 =  HappyAbsSyn42
		 (AbsBnfc.VFalse
	)

happyReduce_57 = happySpecReduce_0  43 happyReduction_57
happyReduction_57  =  HappyAbsSyn43
		 ([]
	)

happyReduce_58 = happySpecReduce_1  43 happyReduction_58
happyReduction_58 (HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn43
		 ((:[]) happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  43 happyReduction_59
happyReduction_59 (HappyAbsSyn43  happy_var_3)
	_
	(HappyAbsSyn44  happy_var_1)
	 =  HappyAbsSyn43
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  44 happyReduction_60
happyReduction_60 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsBnfc.ElementSingleI happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  44 happyReduction_61
happyReduction_61 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsBnfc.ElementSingleD happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  44 happyReduction_62
happyReduction_62 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn44
		 (AbsBnfc.ElementSingleS happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  45 happyReduction_63
happyReduction_63 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValS happy_var_1
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  45 happyReduction_64
happyReduction_64 (HappyAbsSyn27  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValLS happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  45 happyReduction_65
happyReduction_65 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValI happy_var_1
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  45 happyReduction_66
happyReduction_66 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValD happy_var_1
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_1  45 happyReduction_67
happyReduction_67 (HappyAbsSyn42  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValB happy_var_1
	)
happyReduction_67 _  = notHappyAtAll 

happyReduce_68 = happySpecReduce_1  45 happyReduction_68
happyReduction_68 (HappyAbsSyn28  happy_var_1)
	 =  HappyAbsSyn45
		 (AbsBnfc.ValTab happy_var_1
	)
happyReduction_68 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 72 72 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 46;
	PT _ (TS _ 2) -> cont 47;
	PT _ (TS _ 3) -> cont 48;
	PT _ (TS _ 4) -> cont 49;
	PT _ (TS _ 5) -> cont 50;
	PT _ (TS _ 6) -> cont 51;
	PT _ (TS _ 7) -> cont 52;
	PT _ (TS _ 8) -> cont 53;
	PT _ (TS _ 9) -> cont 54;
	PT _ (TS _ 10) -> cont 55;
	PT _ (TS _ 11) -> cont 56;
	PT _ (TS _ 12) -> cont 57;
	PT _ (TS _ 13) -> cont 58;
	PT _ (TS _ 14) -> cont 59;
	PT _ (TS _ 15) -> cont 60;
	PT _ (TS _ 16) -> cont 61;
	PT _ (TS _ 17) -> cont 62;
	PT _ (TI happy_dollar_dollar) -> cont 63;
	PT _ (TD happy_dollar_dollar) -> cont 64;
	PT _ (TL happy_dollar_dollar) -> cont 65;
	PT _ (T_DivStm happy_dollar_dollar) -> cont 66;
	PT _ (T_NameVar happy_dollar_dollar) -> cont 67;
	PT _ (T_BoolOp happy_dollar_dollar) -> cont 68;
	PT _ (T_Operator happy_dollar_dollar) -> cont 69;
	PT _ (T_LongStrings happy_dollar_dollar) -> cont 70;
	PT _ (T_Table happy_dollar_dollar) -> cont 71;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 72 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => ([(Token)], [String]) -> Err a
happyError' = (\(tokens, _) -> happyError tokens)
pProgram tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn29 z -> happyReturn z; _other -> notHappyAtAll })

pBlock tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn30 z -> happyReturn z; _other -> notHappyAtAll })

pListStatement tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn31 z -> happyReturn z; _other -> notHappyAtAll })

pStatement tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn32 z -> happyReturn z; _other -> notHappyAtAll })

pWhile tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn33 z -> happyReturn z; _other -> notHappyAtAll })

pRepeat tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn34 z -> happyReturn z; _other -> notHappyAtAll })

pIf tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn35 z -> happyReturn z; _other -> notHappyAtAll })

pElse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn36 z -> happyReturn z; _other -> notHappyAtAll })

pElseif tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn37 z -> happyReturn z; _other -> notHappyAtAll })

pListElseif tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn38 z -> happyReturn z; _other -> notHappyAtAll })

pListElse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn39 z -> happyReturn z; _other -> notHappyAtAll })

pExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn40 z -> happyReturn z; _other -> notHappyAtAll })

pBoolExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn41 z -> happyReturn z; _other -> notHappyAtAll })

pTBool tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn42 z -> happyReturn z; _other -> notHappyAtAll })

pListElement tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn43 z -> happyReturn z; _other -> notHappyAtAll })

pElement tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn44 z -> happyReturn z; _other -> notHappyAtAll })

pValue tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn45 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ id(prToken t) ++ "'"

myLexer = tokens
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "D:/GitHub/haskell-platform/build/ghc-bindist/local/lib/include/ghcversion.h" #-}















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "F:/Users/randy/AppData/Local/Temp/ghc1900_0/ghc_2.h" #-}


























































































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates\\\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates\\\\GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 75 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 84 "templates\\\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates\\\\GenericTemplate.hs" #-}

{-# LINE 147 "templates\\\\GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates\\\\GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates\\\\GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
