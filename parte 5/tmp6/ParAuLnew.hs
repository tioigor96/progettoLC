{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParAuLnew where
import AbsAuL
import LexAuL
import ErrM
import Utils
import Data.Maybe
import Env
import Code
import TAC
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn59 (Char)
	| HappyAbsSyn60 (Double)
	| HappyAbsSyn61 (Integer)
	| HappyAbsSyn62 (String)
	| HappyAbsSyn63 (LIdent)
	| HappyAbsSyn64 (Program)
	| HappyAbsSyn65 ([PGlobl])
	| HappyAbsSyn66 (PGlobl)
	| HappyAbsSyn67 (Block)
	| HappyAbsSyn68 ([Stm])
	| HappyAbsSyn69 (BasicType)
	| HappyAbsSyn70 (Boolean)
	| HappyAbsSyn71 (PtrVoid)
	| HappyAbsSyn72 (CompoundType)
	| HappyAbsSyn73 (Bracks)
	| HappyAbsSyn74 ([Bracks])
	| HappyAbsSyn75 (Stm)
	| HappyAbsSyn76 (EBlk)
	| HappyAbsSyn77 (Decl)
	| HappyAbsSyn78 (VarInit)
	| HappyAbsSyn79 (Array)
	| HappyAbsSyn80 (VType)
	| HappyAbsSyn81 ([VType])
	| HappyAbsSyn82 ([Array])
	| HappyAbsSyn83 (Local)
	| HappyAbsSyn84 (Ass)
	| HappyAbsSyn85 (Func)
	| HappyAbsSyn86 (FuncWrite)
	| HappyAbsSyn87 (FuncRead)
	| HappyAbsSyn88 (While)
	| HappyAbsSyn89 (Repeat)
	| HappyAbsSyn90 (For)
	| HappyAbsSyn91 (Increment)
	| HappyAbsSyn92 (If)
	| HappyAbsSyn93 (Else)
	| HappyAbsSyn94 (ElseIf)
	| HappyAbsSyn95 ([ElseIf])
	| HappyAbsSyn96 (Return)
	| HappyAbsSyn97 (RValue)
	| HappyAbsSyn98 (Break)
	| HappyAbsSyn99 ([RExp])
	| HappyAbsSyn100 (FuncD)
	| HappyAbsSyn101 (ParamF)
	| HappyAbsSyn102 ([ParamF])
	| HappyAbsSyn103 (Modality)
	| HappyAbsSyn104 (LExp)
	| HappyAbsSyn105 ([Dim])
	| HappyAbsSyn106 (Dim)
	| HappyAbsSyn107 (RExp)

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
 action_113,
 action_114,
 action_115,
 action_116,
 action_117,
 action_118,
 action_119,
 action_120,
 action_121,
 action_122,
 action_123,
 action_124,
 action_125,
 action_126,
 action_127,
 action_128,
 action_129,
 action_130,
 action_131,
 action_132,
 action_133,
 action_134,
 action_135,
 action_136,
 action_137,
 action_138,
 action_139,
 action_140,
 action_141,
 action_142,
 action_143,
 action_144,
 action_145,
 action_146,
 action_147,
 action_148,
 action_149,
 action_150,
 action_151,
 action_152,
 action_153,
 action_154,
 action_155,
 action_156,
 action_157,
 action_158,
 action_159,
 action_160,
 action_161,
 action_162,
 action_163,
 action_164,
 action_165,
 action_166,
 action_167,
 action_168,
 action_169,
 action_170,
 action_171,
 action_172,
 action_173,
 action_174,
 action_175,
 action_176,
 action_177,
 action_178,
 action_179,
 action_180,
 action_181,
 action_182,
 action_183,
 action_184,
 action_185,
 action_186,
 action_187,
 action_188,
 action_189,
 action_190,
 action_191,
 action_192,
 action_193,
 action_194,
 action_195,
 action_196,
 action_197,
 action_198,
 action_199,
 action_200,
 action_201,
 action_202,
 action_203,
 action_204,
 action_205,
 action_206,
 action_207,
 action_208,
 action_209,
 action_210,
 action_211,
 action_212,
 action_213,
 action_214,
 action_215,
 action_216,
 action_217,
 action_218,
 action_219,
 action_220,
 action_221,
 action_222,
 action_223,
 action_224,
 action_225,
 action_226,
 action_227,
 action_228,
 action_229,
 action_230,
 action_231,
 action_232,
 action_233,
 action_234,
 action_235,
 action_236,
 action_237,
 action_238,
 action_239,
 action_240,
 action_241,
 action_242,
 action_243,
 action_244,
 action_245,
 action_246,
 action_247,
 action_248,
 action_249,
 action_250,
 action_251,
 action_252,
 action_253,
 action_254,
 action_255,
 action_256,
 action_257,
 action_258,
 action_259,
 action_260,
 action_261,
 action_262,
 action_263,
 action_264,
 action_265,
 action_266,
 action_267,
 action_268,
 action_269,
 action_270,
 action_271,
 action_272,
 action_273,
 action_274,
 action_275,
 action_276,
 action_277,
 action_278,
 action_279,
 action_280,
 action_281,
 action_282,
 action_283,
 action_284,
 action_285,
 action_286,
 action_287,
 action_288,
 action_289,
 action_290,
 action_291,
 action_292,
 action_293,
 action_294,
 action_295,
 action_296,
 action_297,
 action_298,
 action_299,
 action_300,
 action_301,
 action_302,
 action_303,
 action_304,
 action_305,
 action_306,
 action_307,
 action_308,
 action_309,
 action_310,
 action_311,
 action_312,
 action_313,
 action_314,
 action_315,
 action_316,
 action_317,
 action_318,
 action_319,
 action_320,
 action_321,
 action_322,
 action_323,
 action_324,
 action_325,
 action_326,
 action_327,
 action_328,
 action_329,
 action_330,
 action_331,
 action_332,
 action_333,
 action_334,
 action_335,
 action_336,
 action_337,
 action_338,
 action_339,
 action_340,
 action_341,
 action_342,
 action_343,
 action_344,
 action_345,
 action_346,
 action_347,
 action_348,
 action_349,
 action_350,
 action_351,
 action_352,
 action_353,
 action_354,
 action_355,
 action_356,
 action_357,
 action_358 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

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
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75,
 happyReduce_76,
 happyReduce_77,
 happyReduce_78,
 happyReduce_79,
 happyReduce_80,
 happyReduce_81,
 happyReduce_82,
 happyReduce_83,
 happyReduce_84,
 happyReduce_85,
 happyReduce_86,
 happyReduce_87,
 happyReduce_88,
 happyReduce_89,
 happyReduce_90,
 happyReduce_91,
 happyReduce_92,
 happyReduce_93,
 happyReduce_94,
 happyReduce_95,
 happyReduce_96,
 happyReduce_97,
 happyReduce_98,
 happyReduce_99,
 happyReduce_100,
 happyReduce_101,
 happyReduce_102,
 happyReduce_103,
 happyReduce_104,
 happyReduce_105,
 happyReduce_106,
 happyReduce_107,
 happyReduce_108,
 happyReduce_109,
 happyReduce_110,
 happyReduce_111,
 happyReduce_112,
 happyReduce_113,
 happyReduce_114,
 happyReduce_115,
 happyReduce_116,
 happyReduce_117,
 happyReduce_118,
 happyReduce_119,
 happyReduce_120,
 happyReduce_121,
 happyReduce_122,
 happyReduce_123,
 happyReduce_124,
 happyReduce_125,
 happyReduce_126,
 happyReduce_127,
 happyReduce_128,
 happyReduce_129,
 happyReduce_130,
 happyReduce_131,
 happyReduce_132,
 happyReduce_133,
 happyReduce_134,
 happyReduce_135,
 happyReduce_136,
 happyReduce_137,
 happyReduce_138,
 happyReduce_139,
 happyReduce_140,
 happyReduce_141,
 happyReduce_142,
 happyReduce_143,
 happyReduce_144,
 happyReduce_145,
 happyReduce_146,
 happyReduce_147,
 happyReduce_148,
 happyReduce_149,
 happyReduce_150,
 happyReduce_151,
 happyReduce_152,
 happyReduce_153,
 happyReduce_154,
 happyReduce_155,
 happyReduce_156,
 happyReduce_157,
 happyReduce_158,
 happyReduce_159,
 happyReduce_160,
 happyReduce_161,
 happyReduce_162,
 happyReduce_163,
 happyReduce_164,
 happyReduce_165,
 happyReduce_166,
 happyReduce_167,
 happyReduce_168,
 happyReduce_169,
 happyReduce_170,
 happyReduce_171,
 happyReduce_172,
 happyReduce_173,
 happyReduce_174,
 happyReduce_175,
 happyReduce_176,
 happyReduce_177,
 happyReduce_178,
 happyReduce_179,
 happyReduce_180,
 happyReduce_181,
 happyReduce_182,
 happyReduce_183,
 happyReduce_184,
 happyReduce_185,
 happyReduce_186,
 happyReduce_187,
 happyReduce_188,
 happyReduce_189,
 happyReduce_190,
 happyReduce_191,
 happyReduce_192,
 happyReduce_193,
 happyReduce_194,
 happyReduce_195,
 happyReduce_196,
 happyReduce_197,
 happyReduce_198,
 happyReduce_199,
 happyReduce_200,
 happyReduce_201 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,2333) ([0,0,0,0,0,0,0,4096,32256,21544,1400,4127,0,0,0,0,0,0,0,1024,8064,5386,49502,1031,0,0,0,0,0,0,0,256,34784,34114,61527,257,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,31,0,0,0,0,0,0,0,0,0,0,0,8192,0,1,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,4096,32256,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,64,41464,57680,31765,64,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,32768,31,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,512,4097,3840,0,0,0,0,0,0,0,0,0,16512,1024,960,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,16,0,0,0,16,0,0,0,0,0,0,0,0,0,7680,1920,4,0,0,0,0,0,0,0,0,0,0,480,0,0,0,0,0,0,0,0,0,0,480,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,9632,0,49280,33822,1991,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,602,0,60424,30785,124,0,0,0,0,0,0,0,16,126,0,0,0,0,0,0,0,0,0,0,0,1024,40992,48,0,0,0,0,0,0,0,0,0,256,10248,12,0,0,0,0,0,0,0,0,0,64,2562,3,0,0,0,0,0,0,0,4096,0,0,0,4096,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,602,0,60424,30785,124,0,0,0,0,0,0,32768,150,0,31490,7696,31,0,0,0,0,0,0,40960,37,32768,7744,51076,7,0,0,0,0,0,0,26624,9,8192,1936,61921,1,0,0,0,0,0,0,23040,2,2048,16868,31864,0,0,0,0,0,0,0,38528,0,512,4217,7966,0,0,0,0,0,0,0,9632,0,16512,33822,1991,0,0,0,0,0,0,0,360,0,36896,57607,497,0,0,0,0,0,0,0,88,0,1032,64,124,0,0,0,0,0,0,32768,150,0,31490,7696,31,0,0,0,0,0,0,40960,37,32768,7744,51076,7,0,0,0,0,0,0,26624,9,8192,1936,61921,1,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,602,0,60424,30785,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,2,0,0,0,0,0,0,0,0,0,0,4352,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22528,0,2048,16388,31744,0,0,0,0,0,0,0,4096,0,0,0,4096,0,0,0,0,0,0,0,1024,0,0,0,1024,0,0,0,0,0,0,0,360,0,36896,57607,497,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30208,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38528,0,512,4217,7966,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,33,0,0,0,0,0,0,0,0,0,0,32768,2,0,0,0,0,0,0,0,0,0,0,0,472,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40960,37,32768,7872,51076,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2016,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,63488,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40960,37,32768,7872,51076,7,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38528,0,512,4219,7966,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,150,0,31490,7696,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,26624,9,8192,1968,61921,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,150,0,31490,7696,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,126,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,16388,15488,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,602,0,60424,63553,124,0,0,0,0,0,0,0,16,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,10366,30804,7941,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57345,17031,22405,496,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,32768,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,504,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32772,2591,24085,1985,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,4128,256,240,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23040,2,2048,16876,31864,0,0,0,0,0,0,0,38528,0,512,4219,7966,0,0,0,0,0,0,0,0,0,8,1,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,32768,0,128,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,256,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8208,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2408,0,45088,57607,497,0,0,0,0,0,0,0,602,0,60424,30785,124,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,4,0,0,0,4,0,0,0,0,0,0,0,0,256,10248,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,4,0,0,0,0,0,0,0,0,9632,0,49280,33822,1991,0,0,0,0,0,0,0,2408,0,36896,57607,497,0,0,0,0,0,0,0,602,0,58376,30785,124,0,0,0,0,0,0,32768,150,0,30978,7696,31,0,0,0,0,0,0,40960,37,32768,7744,51076,7,0,0,0,0,0,0,26624,9,8192,1936,61921,1,0,0,0,0,0,0,23040,2,2048,16868,31864,0,0,0,0,0,0,0,38528,0,512,4217,7966,0,0,0,0,0,0,0,9632,0,16512,33822,1991,0,0,0,0,0,0,0,2408,0,36896,57607,497,0,0,0,0,0,0,0,602,0,58376,30785,124,0,0,0,0,0,0,32768,150,0,30978,7696,31,0,0,0,0,0,0,32768,5,32768,64,49156,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1888,0,0,512,0,0,0,0,0,0,0,38528,0,512,4219,7966,0,0,0,0,0,0,0,9632,0,49280,33822,1991,0,0,0,0,0,0,0,2408,0,45088,57607,497,0,0,0,0,0,0,0,602,0,60424,30785,124,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,602,0,58376,30785,124,0,0,0,0,0,0,0,8,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,4096,0,0,0,0,0,0,0,0,0,8,0,1024,0,0,0,0,0,0,0,0,0,2,0,256,0,0,0,0,0,0,0,0,32768,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2116,0,0,0,0,0,0,0,0,0,0,0,529,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,150,0,31490,7696,31,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,26624,9,8192,1968,61921,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,256,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,10248,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,49152,0,0,0,0,0,0,0,0,0,40960,37,32768,7872,51076,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,16,0,0,0,0,0,0,0,0,0,0,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","%start_pListPGlobl","%start_pPGlobl","%start_pBlock","%start_pListStm","%start_pBasicType","%start_pBoolean","%start_pPtrVoid","%start_pCompoundType","%start_pBracks","%start_pListBracks","%start_pStm","%start_pEBlk","%start_pDecl","%start_pVarInit","%start_pArray","%start_pVType","%start_pListVType","%start_pListArray","%start_pLocal","%start_pAss","%start_pFunc","%start_pFuncWrite","%start_pFuncRead","%start_pWhile","%start_pRepeat","%start_pFor","%start_pIncrement","%start_pIf","%start_pElse","%start_pElseIf","%start_pListElseIf","%start_pReturn","%start_pRValue","%start_pBreak","%start_pListRExp","%start_pFuncD","%start_pParamF","%start_pListParamF","%start_pModality","%start_pLExp","%start_pListDim","%start_pDim","%start_pRExp","%start_pRExp2","%start_pRExp3","%start_pRExp6","%start_pRExp7","%start_pRExp8","%start_pRExp9","%start_pRExp10","%start_pRExp11","%start_pRExp1","%start_pRExp4","%start_pRExp5","%start_pRExp12","Char","Double","Integer","String","LIdent","Program","ListPGlobl","PGlobl","Block","ListStm","BasicType","Boolean","PtrVoid","CompoundType","Bracks","ListBracks","Stm","EBlk","Decl","VarInit","Array","VType","ListVType","ListArray","Local","Ass","Func","FuncWrite","FuncRead","While","Repeat","For","Increment","If","Else","ElseIf","ListElseIf","Return","RValue","Break","ListRExp","FuncD","ParamF","ListParamF","Modality","LExp","ListDim","Dim","RExp","RExp2","RExp3","RExp6","RExp7","RExp8","RExp9","RExp10","RExp11","RExp1","RExp4","RExp5","RExp12","'#'","'%'","'&'","'('","')'","'*'","'+'","','","'-'","'..'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'Bool'","'Char'","'Float'","'Int'","'String'","'Void'","'['","']'","'^'","'and'","'break'","'const'","'do'","'else'","'elseif'","'end'","'false'","'for'","'function'","'if'","'in'","'local'","'name'","'nil'","'not'","'or'","'readChar'","'readFloat'","'readInt'","'readString'","'ref'","'repeat'","'res'","'return'","'then'","'true'","'until'","'val'","'valres'","'while'","'writeChar'","'writeFloat'","'writeInt'","'writeString'","'{'","'}'","'~='","L_charac","L_doubl","L_integ","L_quoted","L_LIdent","%eof"]
        bit_start = st * 190
        bit_end = (st + 1) * 190
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..189]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (125) = happyShift action_219
action_0 (138) = happyShift action_136
action_0 (139) = happyShift action_137
action_0 (140) = happyShift action_138
action_0 (141) = happyShift action_139
action_0 (142) = happyShift action_140
action_0 (143) = happyShift action_141
action_0 (148) = happyShift action_145
action_0 (150) = happyShift action_191
action_0 (155) = happyShift action_160
action_0 (157) = happyShift action_156
action_0 (159) = happyShift action_172
action_0 (164) = happyShift action_85
action_0 (165) = happyShift action_86
action_0 (166) = happyShift action_87
action_0 (167) = happyShift action_88
action_0 (169) = happyShift action_162
action_0 (171) = happyShift action_149
action_0 (177) = happyShift action_164
action_0 (178) = happyShift action_90
action_0 (179) = happyShift action_91
action_0 (180) = happyShift action_92
action_0 (181) = happyShift action_93
action_0 (189) = happyShift action_97
action_0 (63) = happyGoto action_64
action_0 (64) = happyGoto action_222
action_0 (65) = happyGoto action_223
action_0 (66) = happyGoto action_221
action_0 (69) = happyGoto action_216
action_0 (72) = happyGoto action_133
action_0 (75) = happyGoto action_217
action_0 (76) = happyGoto action_193
action_0 (77) = happyGoto action_194
action_0 (83) = happyGoto action_195
action_0 (84) = happyGoto action_196
action_0 (85) = happyGoto action_197
action_0 (86) = happyGoto action_68
action_0 (87) = happyGoto action_69
action_0 (88) = happyGoto action_198
action_0 (89) = happyGoto action_199
action_0 (90) = happyGoto action_200
action_0 (92) = happyGoto action_201
action_0 (96) = happyGoto action_202
action_0 (98) = happyGoto action_203
action_0 (100) = happyGoto action_218
action_0 (104) = happyGoto action_170
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (125) = happyShift action_219
action_1 (138) = happyShift action_136
action_1 (139) = happyShift action_137
action_1 (140) = happyShift action_138
action_1 (141) = happyShift action_139
action_1 (142) = happyShift action_140
action_1 (143) = happyShift action_141
action_1 (148) = happyShift action_145
action_1 (150) = happyShift action_191
action_1 (155) = happyShift action_160
action_1 (157) = happyShift action_156
action_1 (159) = happyShift action_172
action_1 (164) = happyShift action_85
action_1 (165) = happyShift action_86
action_1 (166) = happyShift action_87
action_1 (167) = happyShift action_88
action_1 (169) = happyShift action_162
action_1 (171) = happyShift action_149
action_1 (177) = happyShift action_164
action_1 (178) = happyShift action_90
action_1 (179) = happyShift action_91
action_1 (180) = happyShift action_92
action_1 (181) = happyShift action_93
action_1 (189) = happyShift action_97
action_1 (63) = happyGoto action_64
action_1 (65) = happyGoto action_220
action_1 (66) = happyGoto action_221
action_1 (69) = happyGoto action_216
action_1 (72) = happyGoto action_133
action_1 (75) = happyGoto action_217
action_1 (76) = happyGoto action_193
action_1 (77) = happyGoto action_194
action_1 (83) = happyGoto action_195
action_1 (84) = happyGoto action_196
action_1 (85) = happyGoto action_197
action_1 (86) = happyGoto action_68
action_1 (87) = happyGoto action_69
action_1 (88) = happyGoto action_198
action_1 (89) = happyGoto action_199
action_1 (90) = happyGoto action_200
action_1 (92) = happyGoto action_201
action_1 (96) = happyGoto action_202
action_1 (98) = happyGoto action_203
action_1 (100) = happyGoto action_218
action_1 (104) = happyGoto action_170
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (125) = happyShift action_219
action_2 (138) = happyShift action_136
action_2 (139) = happyShift action_137
action_2 (140) = happyShift action_138
action_2 (141) = happyShift action_139
action_2 (142) = happyShift action_140
action_2 (143) = happyShift action_141
action_2 (148) = happyShift action_145
action_2 (150) = happyShift action_191
action_2 (155) = happyShift action_160
action_2 (157) = happyShift action_156
action_2 (159) = happyShift action_172
action_2 (164) = happyShift action_85
action_2 (165) = happyShift action_86
action_2 (166) = happyShift action_87
action_2 (167) = happyShift action_88
action_2 (169) = happyShift action_162
action_2 (171) = happyShift action_149
action_2 (177) = happyShift action_164
action_2 (178) = happyShift action_90
action_2 (179) = happyShift action_91
action_2 (180) = happyShift action_92
action_2 (181) = happyShift action_93
action_2 (189) = happyShift action_97
action_2 (63) = happyGoto action_64
action_2 (66) = happyGoto action_215
action_2 (69) = happyGoto action_216
action_2 (72) = happyGoto action_133
action_2 (75) = happyGoto action_217
action_2 (76) = happyGoto action_193
action_2 (77) = happyGoto action_194
action_2 (83) = happyGoto action_195
action_2 (84) = happyGoto action_196
action_2 (85) = happyGoto action_197
action_2 (86) = happyGoto action_68
action_2 (87) = happyGoto action_69
action_2 (88) = happyGoto action_198
action_2 (89) = happyGoto action_199
action_2 (90) = happyGoto action_200
action_2 (92) = happyGoto action_201
action_2 (96) = happyGoto action_202
action_2 (98) = happyGoto action_203
action_2 (100) = happyGoto action_218
action_2 (104) = happyGoto action_170
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (67) = happyGoto action_213
action_3 (68) = happyGoto action_214
action_3 _ = happyReduce_67

action_4 (68) = happyGoto action_212
action_4 _ = happyReduce_67

action_5 (138) = happyShift action_136
action_5 (139) = happyShift action_137
action_5 (140) = happyShift action_138
action_5 (141) = happyShift action_139
action_5 (142) = happyShift action_140
action_5 (143) = happyShift action_141
action_5 (69) = happyGoto action_211
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (154) = happyShift action_83
action_6 (173) = happyShift action_89
action_6 (70) = happyGoto action_210
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (161) = happyShift action_84
action_7 (71) = happyGoto action_209
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (125) = happyShift action_135
action_8 (138) = happyShift action_136
action_8 (139) = happyShift action_137
action_8 (140) = happyShift action_138
action_8 (141) = happyShift action_139
action_8 (142) = happyShift action_140
action_8 (143) = happyShift action_141
action_8 (69) = happyGoto action_132
action_8 (72) = happyGoto action_208
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (144) = happyShift action_206
action_9 (73) = happyGoto action_207
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (144) = happyShift action_206
action_10 (73) = happyGoto action_204
action_10 (74) = happyGoto action_205
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (125) = happyShift action_81
action_11 (138) = happyShift action_136
action_11 (139) = happyShift action_137
action_11 (140) = happyShift action_138
action_11 (141) = happyShift action_139
action_11 (142) = happyShift action_140
action_11 (143) = happyShift action_141
action_11 (148) = happyShift action_145
action_11 (150) = happyShift action_191
action_11 (155) = happyShift action_160
action_11 (157) = happyShift action_156
action_11 (159) = happyShift action_172
action_11 (164) = happyShift action_85
action_11 (165) = happyShift action_86
action_11 (166) = happyShift action_87
action_11 (167) = happyShift action_88
action_11 (169) = happyShift action_162
action_11 (171) = happyShift action_149
action_11 (177) = happyShift action_164
action_11 (178) = happyShift action_90
action_11 (179) = happyShift action_91
action_11 (180) = happyShift action_92
action_11 (181) = happyShift action_93
action_11 (189) = happyShift action_97
action_11 (63) = happyGoto action_64
action_11 (69) = happyGoto action_188
action_11 (75) = happyGoto action_192
action_11 (76) = happyGoto action_193
action_11 (77) = happyGoto action_194
action_11 (83) = happyGoto action_195
action_11 (84) = happyGoto action_196
action_11 (85) = happyGoto action_197
action_11 (86) = happyGoto action_68
action_11 (87) = happyGoto action_69
action_11 (88) = happyGoto action_198
action_11 (89) = happyGoto action_199
action_11 (90) = happyGoto action_200
action_11 (92) = happyGoto action_201
action_11 (96) = happyGoto action_202
action_11 (98) = happyGoto action_203
action_11 (104) = happyGoto action_170
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (150) = happyShift action_191
action_12 (76) = happyGoto action_190
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (138) = happyShift action_136
action_13 (139) = happyShift action_137
action_13 (140) = happyShift action_138
action_13 (141) = happyShift action_139
action_13 (142) = happyShift action_140
action_13 (143) = happyShift action_141
action_13 (69) = happyGoto action_188
action_13 (77) = happyGoto action_189
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (134) = happyShift action_187
action_14 (78) = happyGoto action_186
action_14 _ = happyReduce_97

action_15 (182) = happyShift action_175
action_15 (79) = happyGoto action_185
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (154) = happyShift action_83
action_16 (161) = happyShift action_84
action_16 (173) = happyShift action_89
action_16 (185) = happyShift action_57
action_16 (186) = happyShift action_94
action_16 (187) = happyShift action_95
action_16 (188) = happyShift action_96
action_16 (59) = happyGoto action_176
action_16 (60) = happyGoto action_177
action_16 (61) = happyGoto action_178
action_16 (62) = happyGoto action_179
action_16 (70) = happyGoto action_180
action_16 (71) = happyGoto action_181
action_16 (80) = happyGoto action_184
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (154) = happyShift action_83
action_17 (161) = happyShift action_84
action_17 (173) = happyShift action_89
action_17 (185) = happyShift action_57
action_17 (186) = happyShift action_94
action_17 (187) = happyShift action_95
action_17 (188) = happyShift action_96
action_17 (59) = happyGoto action_176
action_17 (60) = happyGoto action_177
action_17 (61) = happyGoto action_178
action_17 (62) = happyGoto action_179
action_17 (70) = happyGoto action_180
action_17 (71) = happyGoto action_181
action_17 (80) = happyGoto action_182
action_17 (81) = happyGoto action_183
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (182) = happyShift action_175
action_18 (79) = happyGoto action_173
action_18 (82) = happyGoto action_174
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (159) = happyShift action_172
action_19 (83) = happyGoto action_171
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (125) = happyShift action_81
action_20 (189) = happyShift action_97
action_20 (63) = happyGoto action_105
action_20 (84) = happyGoto action_169
action_20 (104) = happyGoto action_170
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (164) = happyShift action_85
action_21 (165) = happyShift action_86
action_21 (166) = happyShift action_87
action_21 (167) = happyShift action_88
action_21 (178) = happyShift action_90
action_21 (179) = happyShift action_91
action_21 (180) = happyShift action_92
action_21 (181) = happyShift action_93
action_21 (189) = happyShift action_97
action_21 (63) = happyGoto action_167
action_21 (85) = happyGoto action_168
action_21 (86) = happyGoto action_68
action_21 (87) = happyGoto action_69
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (178) = happyShift action_90
action_22 (179) = happyShift action_91
action_22 (180) = happyShift action_92
action_22 (181) = happyShift action_93
action_22 (86) = happyGoto action_166
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (164) = happyShift action_85
action_23 (165) = happyShift action_86
action_23 (166) = happyShift action_87
action_23 (167) = happyShift action_88
action_23 (87) = happyGoto action_165
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (177) = happyShift action_164
action_24 (88) = happyGoto action_163
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (169) = happyShift action_162
action_25 (89) = happyGoto action_161
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (155) = happyShift action_160
action_26 (90) = happyGoto action_159
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (127) = happyShift action_158
action_27 (91) = happyGoto action_157
action_27 _ = happyReduce_129

action_28 (157) = happyShift action_156
action_28 (92) = happyGoto action_155
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (151) = happyShift action_154
action_29 (93) = happyGoto action_153
action_29 _ = happyReduce_133

action_30 (152) = happyShift action_152
action_30 (94) = happyGoto action_151
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (95) = happyGoto action_150
action_31 _ = happyReduce_135

action_32 (171) = happyShift action_149
action_32 (96) = happyGoto action_148
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (120) = happyShift action_79
action_33 (122) = happyShift action_80
action_33 (123) = happyShift action_59
action_33 (125) = happyShift action_81
action_33 (128) = happyShift action_82
action_33 (154) = happyShift action_83
action_33 (161) = happyShift action_84
action_33 (162) = happyShift action_104
action_33 (164) = happyShift action_85
action_33 (165) = happyShift action_86
action_33 (166) = happyShift action_87
action_33 (167) = happyShift action_88
action_33 (173) = happyShift action_89
action_33 (178) = happyShift action_90
action_33 (179) = happyShift action_91
action_33 (180) = happyShift action_92
action_33 (181) = happyShift action_93
action_33 (185) = happyShift action_57
action_33 (186) = happyShift action_94
action_33 (187) = happyShift action_95
action_33 (188) = happyShift action_96
action_33 (189) = happyShift action_97
action_33 (59) = happyGoto action_60
action_33 (60) = happyGoto action_61
action_33 (61) = happyGoto action_62
action_33 (62) = happyGoto action_63
action_33 (63) = happyGoto action_64
action_33 (70) = happyGoto action_65
action_33 (71) = happyGoto action_66
action_33 (85) = happyGoto action_67
action_33 (86) = happyGoto action_68
action_33 (87) = happyGoto action_69
action_33 (97) = happyGoto action_146
action_33 (104) = happyGoto action_70
action_33 (107) = happyGoto action_147
action_33 (108) = happyGoto action_100
action_33 (109) = happyGoto action_101
action_33 (110) = happyGoto action_71
action_33 (111) = happyGoto action_72
action_33 (112) = happyGoto action_73
action_33 (113) = happyGoto action_74
action_33 (114) = happyGoto action_75
action_33 (115) = happyGoto action_76
action_33 (116) = happyGoto action_115
action_33 (117) = happyGoto action_103
action_33 (118) = happyGoto action_99
action_33 (119) = happyGoto action_78
action_33 _ = happyReduce_138

action_34 (148) = happyShift action_145
action_34 (98) = happyGoto action_144
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (120) = happyShift action_79
action_35 (122) = happyShift action_80
action_35 (123) = happyShift action_59
action_35 (125) = happyShift action_81
action_35 (128) = happyShift action_82
action_35 (154) = happyShift action_83
action_35 (161) = happyShift action_84
action_35 (162) = happyShift action_104
action_35 (164) = happyShift action_85
action_35 (165) = happyShift action_86
action_35 (166) = happyShift action_87
action_35 (167) = happyShift action_88
action_35 (173) = happyShift action_89
action_35 (178) = happyShift action_90
action_35 (179) = happyShift action_91
action_35 (180) = happyShift action_92
action_35 (181) = happyShift action_93
action_35 (185) = happyShift action_57
action_35 (186) = happyShift action_94
action_35 (187) = happyShift action_95
action_35 (188) = happyShift action_96
action_35 (189) = happyShift action_97
action_35 (59) = happyGoto action_60
action_35 (60) = happyGoto action_61
action_35 (61) = happyGoto action_62
action_35 (62) = happyGoto action_63
action_35 (63) = happyGoto action_64
action_35 (70) = happyGoto action_65
action_35 (71) = happyGoto action_66
action_35 (85) = happyGoto action_67
action_35 (86) = happyGoto action_68
action_35 (87) = happyGoto action_69
action_35 (99) = happyGoto action_142
action_35 (104) = happyGoto action_70
action_35 (107) = happyGoto action_143
action_35 (108) = happyGoto action_100
action_35 (109) = happyGoto action_101
action_35 (110) = happyGoto action_71
action_35 (111) = happyGoto action_72
action_35 (112) = happyGoto action_73
action_35 (113) = happyGoto action_74
action_35 (114) = happyGoto action_75
action_35 (115) = happyGoto action_76
action_35 (116) = happyGoto action_115
action_35 (117) = happyGoto action_103
action_35 (118) = happyGoto action_99
action_35 (119) = happyGoto action_78
action_35 _ = happyReduce_141

action_36 (125) = happyShift action_135
action_36 (138) = happyShift action_136
action_36 (139) = happyShift action_137
action_36 (140) = happyShift action_138
action_36 (141) = happyShift action_139
action_36 (142) = happyShift action_140
action_36 (143) = happyShift action_141
action_36 (69) = happyGoto action_132
action_36 (72) = happyGoto action_133
action_36 (100) = happyGoto action_134
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (149) = happyShift action_122
action_37 (160) = happyShift action_123
action_37 (168) = happyShift action_124
action_37 (170) = happyShift action_125
action_37 (175) = happyShift action_126
action_37 (176) = happyShift action_127
action_37 (101) = happyGoto action_131
action_37 (103) = happyGoto action_130
action_37 _ = happyReduce_149

action_38 (149) = happyShift action_122
action_38 (160) = happyShift action_123
action_38 (168) = happyShift action_124
action_38 (170) = happyShift action_125
action_38 (175) = happyShift action_126
action_38 (176) = happyShift action_127
action_38 (190) = happyReduce_146
action_38 (101) = happyGoto action_128
action_38 (102) = happyGoto action_129
action_38 (103) = happyGoto action_130
action_38 _ = happyReduce_149

action_39 (149) = happyShift action_122
action_39 (160) = happyShift action_123
action_39 (168) = happyShift action_124
action_39 (170) = happyShift action_125
action_39 (175) = happyShift action_126
action_39 (176) = happyShift action_127
action_39 (103) = happyGoto action_121
action_39 _ = happyReduce_149

action_40 (125) = happyShift action_81
action_40 (189) = happyShift action_97
action_40 (63) = happyGoto action_105
action_40 (104) = happyGoto action_120
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (144) = happyShift action_117
action_41 (105) = happyGoto action_118
action_41 (106) = happyGoto action_119
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (144) = happyShift action_117
action_42 (106) = happyGoto action_116
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (120) = happyShift action_79
action_43 (122) = happyShift action_80
action_43 (123) = happyShift action_59
action_43 (125) = happyShift action_81
action_43 (128) = happyShift action_82
action_43 (154) = happyShift action_83
action_43 (161) = happyShift action_84
action_43 (162) = happyShift action_104
action_43 (164) = happyShift action_85
action_43 (165) = happyShift action_86
action_43 (166) = happyShift action_87
action_43 (167) = happyShift action_88
action_43 (173) = happyShift action_89
action_43 (178) = happyShift action_90
action_43 (179) = happyShift action_91
action_43 (180) = happyShift action_92
action_43 (181) = happyShift action_93
action_43 (185) = happyShift action_57
action_43 (186) = happyShift action_94
action_43 (187) = happyShift action_95
action_43 (188) = happyShift action_96
action_43 (189) = happyShift action_97
action_43 (59) = happyGoto action_60
action_43 (60) = happyGoto action_61
action_43 (61) = happyGoto action_62
action_43 (62) = happyGoto action_63
action_43 (63) = happyGoto action_64
action_43 (70) = happyGoto action_65
action_43 (71) = happyGoto action_66
action_43 (85) = happyGoto action_67
action_43 (86) = happyGoto action_68
action_43 (87) = happyGoto action_69
action_43 (104) = happyGoto action_70
action_43 (107) = happyGoto action_114
action_43 (108) = happyGoto action_100
action_43 (109) = happyGoto action_101
action_43 (110) = happyGoto action_71
action_43 (111) = happyGoto action_72
action_43 (112) = happyGoto action_73
action_43 (113) = happyGoto action_74
action_43 (114) = happyGoto action_75
action_43 (115) = happyGoto action_76
action_43 (116) = happyGoto action_115
action_43 (117) = happyGoto action_103
action_43 (118) = happyGoto action_99
action_43 (119) = happyGoto action_78
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (120) = happyShift action_79
action_44 (122) = happyShift action_80
action_44 (123) = happyShift action_59
action_44 (125) = happyShift action_81
action_44 (128) = happyShift action_82
action_44 (154) = happyShift action_83
action_44 (161) = happyShift action_84
action_44 (162) = happyShift action_104
action_44 (164) = happyShift action_85
action_44 (165) = happyShift action_86
action_44 (166) = happyShift action_87
action_44 (167) = happyShift action_88
action_44 (173) = happyShift action_89
action_44 (178) = happyShift action_90
action_44 (179) = happyShift action_91
action_44 (180) = happyShift action_92
action_44 (181) = happyShift action_93
action_44 (185) = happyShift action_57
action_44 (186) = happyShift action_94
action_44 (187) = happyShift action_95
action_44 (188) = happyShift action_96
action_44 (189) = happyShift action_97
action_44 (59) = happyGoto action_60
action_44 (60) = happyGoto action_61
action_44 (61) = happyGoto action_62
action_44 (62) = happyGoto action_63
action_44 (63) = happyGoto action_64
action_44 (70) = happyGoto action_65
action_44 (71) = happyGoto action_66
action_44 (85) = happyGoto action_67
action_44 (86) = happyGoto action_68
action_44 (87) = happyGoto action_69
action_44 (104) = happyGoto action_70
action_44 (108) = happyGoto action_113
action_44 (109) = happyGoto action_101
action_44 (110) = happyGoto action_71
action_44 (111) = happyGoto action_72
action_44 (112) = happyGoto action_73
action_44 (113) = happyGoto action_74
action_44 (114) = happyGoto action_75
action_44 (115) = happyGoto action_76
action_44 (117) = happyGoto action_103
action_44 (118) = happyGoto action_99
action_44 (119) = happyGoto action_78
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (120) = happyShift action_79
action_45 (122) = happyShift action_80
action_45 (123) = happyShift action_59
action_45 (125) = happyShift action_81
action_45 (128) = happyShift action_82
action_45 (154) = happyShift action_83
action_45 (161) = happyShift action_84
action_45 (164) = happyShift action_85
action_45 (165) = happyShift action_86
action_45 (166) = happyShift action_87
action_45 (167) = happyShift action_88
action_45 (173) = happyShift action_89
action_45 (178) = happyShift action_90
action_45 (179) = happyShift action_91
action_45 (180) = happyShift action_92
action_45 (181) = happyShift action_93
action_45 (185) = happyShift action_57
action_45 (186) = happyShift action_94
action_45 (187) = happyShift action_95
action_45 (188) = happyShift action_96
action_45 (189) = happyShift action_97
action_45 (59) = happyGoto action_60
action_45 (60) = happyGoto action_61
action_45 (61) = happyGoto action_62
action_45 (62) = happyGoto action_63
action_45 (63) = happyGoto action_64
action_45 (70) = happyGoto action_65
action_45 (71) = happyGoto action_66
action_45 (85) = happyGoto action_67
action_45 (86) = happyGoto action_68
action_45 (87) = happyGoto action_69
action_45 (104) = happyGoto action_70
action_45 (109) = happyGoto action_112
action_45 (110) = happyGoto action_71
action_45 (111) = happyGoto action_72
action_45 (112) = happyGoto action_73
action_45 (113) = happyGoto action_74
action_45 (114) = happyGoto action_75
action_45 (115) = happyGoto action_76
action_45 (117) = happyGoto action_103
action_45 (118) = happyGoto action_99
action_45 (119) = happyGoto action_78
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (120) = happyShift action_79
action_46 (122) = happyShift action_80
action_46 (123) = happyShift action_59
action_46 (125) = happyShift action_81
action_46 (128) = happyShift action_82
action_46 (154) = happyShift action_83
action_46 (161) = happyShift action_84
action_46 (164) = happyShift action_85
action_46 (165) = happyShift action_86
action_46 (166) = happyShift action_87
action_46 (167) = happyShift action_88
action_46 (173) = happyShift action_89
action_46 (178) = happyShift action_90
action_46 (179) = happyShift action_91
action_46 (180) = happyShift action_92
action_46 (181) = happyShift action_93
action_46 (185) = happyShift action_57
action_46 (186) = happyShift action_94
action_46 (187) = happyShift action_95
action_46 (188) = happyShift action_96
action_46 (189) = happyShift action_97
action_46 (59) = happyGoto action_60
action_46 (60) = happyGoto action_61
action_46 (61) = happyGoto action_62
action_46 (62) = happyGoto action_63
action_46 (63) = happyGoto action_64
action_46 (70) = happyGoto action_65
action_46 (71) = happyGoto action_66
action_46 (85) = happyGoto action_67
action_46 (86) = happyGoto action_68
action_46 (87) = happyGoto action_69
action_46 (104) = happyGoto action_70
action_46 (110) = happyGoto action_111
action_46 (111) = happyGoto action_72
action_46 (112) = happyGoto action_73
action_46 (113) = happyGoto action_74
action_46 (114) = happyGoto action_75
action_46 (115) = happyGoto action_76
action_46 (119) = happyGoto action_78
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (120) = happyShift action_79
action_47 (122) = happyShift action_80
action_47 (123) = happyShift action_59
action_47 (125) = happyShift action_81
action_47 (128) = happyShift action_82
action_47 (154) = happyShift action_83
action_47 (161) = happyShift action_84
action_47 (164) = happyShift action_85
action_47 (165) = happyShift action_86
action_47 (166) = happyShift action_87
action_47 (167) = happyShift action_88
action_47 (173) = happyShift action_89
action_47 (178) = happyShift action_90
action_47 (179) = happyShift action_91
action_47 (180) = happyShift action_92
action_47 (181) = happyShift action_93
action_47 (185) = happyShift action_57
action_47 (186) = happyShift action_94
action_47 (187) = happyShift action_95
action_47 (188) = happyShift action_96
action_47 (189) = happyShift action_97
action_47 (59) = happyGoto action_60
action_47 (60) = happyGoto action_61
action_47 (61) = happyGoto action_62
action_47 (62) = happyGoto action_63
action_47 (63) = happyGoto action_64
action_47 (70) = happyGoto action_65
action_47 (71) = happyGoto action_66
action_47 (85) = happyGoto action_67
action_47 (86) = happyGoto action_68
action_47 (87) = happyGoto action_69
action_47 (104) = happyGoto action_70
action_47 (111) = happyGoto action_110
action_47 (112) = happyGoto action_73
action_47 (113) = happyGoto action_74
action_47 (114) = happyGoto action_75
action_47 (115) = happyGoto action_76
action_47 (119) = happyGoto action_78
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (120) = happyShift action_79
action_48 (122) = happyShift action_80
action_48 (123) = happyShift action_59
action_48 (125) = happyShift action_81
action_48 (128) = happyShift action_82
action_48 (154) = happyShift action_83
action_48 (161) = happyShift action_84
action_48 (164) = happyShift action_85
action_48 (165) = happyShift action_86
action_48 (166) = happyShift action_87
action_48 (167) = happyShift action_88
action_48 (173) = happyShift action_89
action_48 (178) = happyShift action_90
action_48 (179) = happyShift action_91
action_48 (180) = happyShift action_92
action_48 (181) = happyShift action_93
action_48 (185) = happyShift action_57
action_48 (186) = happyShift action_94
action_48 (187) = happyShift action_95
action_48 (188) = happyShift action_96
action_48 (189) = happyShift action_97
action_48 (59) = happyGoto action_60
action_48 (60) = happyGoto action_61
action_48 (61) = happyGoto action_62
action_48 (62) = happyGoto action_63
action_48 (63) = happyGoto action_64
action_48 (70) = happyGoto action_65
action_48 (71) = happyGoto action_66
action_48 (85) = happyGoto action_67
action_48 (86) = happyGoto action_68
action_48 (87) = happyGoto action_69
action_48 (104) = happyGoto action_70
action_48 (112) = happyGoto action_109
action_48 (113) = happyGoto action_74
action_48 (114) = happyGoto action_75
action_48 (115) = happyGoto action_76
action_48 (119) = happyGoto action_78
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (120) = happyShift action_79
action_49 (122) = happyShift action_80
action_49 (123) = happyShift action_59
action_49 (125) = happyShift action_81
action_49 (128) = happyShift action_82
action_49 (154) = happyShift action_83
action_49 (161) = happyShift action_84
action_49 (164) = happyShift action_85
action_49 (165) = happyShift action_86
action_49 (166) = happyShift action_87
action_49 (167) = happyShift action_88
action_49 (173) = happyShift action_89
action_49 (178) = happyShift action_90
action_49 (179) = happyShift action_91
action_49 (180) = happyShift action_92
action_49 (181) = happyShift action_93
action_49 (185) = happyShift action_57
action_49 (186) = happyShift action_94
action_49 (187) = happyShift action_95
action_49 (188) = happyShift action_96
action_49 (189) = happyShift action_97
action_49 (59) = happyGoto action_60
action_49 (60) = happyGoto action_61
action_49 (61) = happyGoto action_62
action_49 (62) = happyGoto action_63
action_49 (63) = happyGoto action_64
action_49 (70) = happyGoto action_65
action_49 (71) = happyGoto action_66
action_49 (85) = happyGoto action_67
action_49 (86) = happyGoto action_68
action_49 (87) = happyGoto action_69
action_49 (104) = happyGoto action_70
action_49 (113) = happyGoto action_108
action_49 (114) = happyGoto action_75
action_49 (115) = happyGoto action_76
action_49 (119) = happyGoto action_78
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (120) = happyShift action_79
action_50 (122) = happyShift action_80
action_50 (123) = happyShift action_59
action_50 (125) = happyShift action_81
action_50 (154) = happyShift action_83
action_50 (161) = happyShift action_84
action_50 (164) = happyShift action_85
action_50 (165) = happyShift action_86
action_50 (166) = happyShift action_87
action_50 (167) = happyShift action_88
action_50 (173) = happyShift action_89
action_50 (178) = happyShift action_90
action_50 (179) = happyShift action_91
action_50 (180) = happyShift action_92
action_50 (181) = happyShift action_93
action_50 (185) = happyShift action_57
action_50 (186) = happyShift action_94
action_50 (187) = happyShift action_95
action_50 (188) = happyShift action_96
action_50 (189) = happyShift action_97
action_50 (59) = happyGoto action_60
action_50 (60) = happyGoto action_61
action_50 (61) = happyGoto action_62
action_50 (62) = happyGoto action_63
action_50 (63) = happyGoto action_64
action_50 (70) = happyGoto action_65
action_50 (71) = happyGoto action_66
action_50 (85) = happyGoto action_67
action_50 (86) = happyGoto action_68
action_50 (87) = happyGoto action_69
action_50 (104) = happyGoto action_70
action_50 (114) = happyGoto action_107
action_50 (115) = happyGoto action_76
action_50 (119) = happyGoto action_78
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (122) = happyShift action_80
action_51 (123) = happyShift action_59
action_51 (125) = happyShift action_81
action_51 (154) = happyShift action_83
action_51 (161) = happyShift action_84
action_51 (173) = happyShift action_89
action_51 (185) = happyShift action_57
action_51 (186) = happyShift action_94
action_51 (187) = happyShift action_95
action_51 (188) = happyShift action_96
action_51 (189) = happyShift action_97
action_51 (59) = happyGoto action_60
action_51 (60) = happyGoto action_61
action_51 (61) = happyGoto action_62
action_51 (62) = happyGoto action_63
action_51 (63) = happyGoto action_105
action_51 (70) = happyGoto action_65
action_51 (71) = happyGoto action_66
action_51 (104) = happyGoto action_70
action_51 (115) = happyGoto action_106
action_51 (119) = happyGoto action_78
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (120) = happyShift action_79
action_52 (122) = happyShift action_80
action_52 (123) = happyShift action_59
action_52 (125) = happyShift action_81
action_52 (128) = happyShift action_82
action_52 (154) = happyShift action_83
action_52 (161) = happyShift action_84
action_52 (162) = happyShift action_104
action_52 (164) = happyShift action_85
action_52 (165) = happyShift action_86
action_52 (166) = happyShift action_87
action_52 (167) = happyShift action_88
action_52 (173) = happyShift action_89
action_52 (178) = happyShift action_90
action_52 (179) = happyShift action_91
action_52 (180) = happyShift action_92
action_52 (181) = happyShift action_93
action_52 (185) = happyShift action_57
action_52 (186) = happyShift action_94
action_52 (187) = happyShift action_95
action_52 (188) = happyShift action_96
action_52 (189) = happyShift action_97
action_52 (59) = happyGoto action_60
action_52 (60) = happyGoto action_61
action_52 (61) = happyGoto action_62
action_52 (62) = happyGoto action_63
action_52 (63) = happyGoto action_64
action_52 (70) = happyGoto action_65
action_52 (71) = happyGoto action_66
action_52 (85) = happyGoto action_67
action_52 (86) = happyGoto action_68
action_52 (87) = happyGoto action_69
action_52 (104) = happyGoto action_70
action_52 (108) = happyGoto action_100
action_52 (109) = happyGoto action_101
action_52 (110) = happyGoto action_71
action_52 (111) = happyGoto action_72
action_52 (112) = happyGoto action_73
action_52 (113) = happyGoto action_74
action_52 (114) = happyGoto action_75
action_52 (115) = happyGoto action_76
action_52 (116) = happyGoto action_102
action_52 (117) = happyGoto action_103
action_52 (118) = happyGoto action_99
action_52 (119) = happyGoto action_78
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (120) = happyShift action_79
action_53 (122) = happyShift action_80
action_53 (123) = happyShift action_59
action_53 (125) = happyShift action_81
action_53 (128) = happyShift action_82
action_53 (154) = happyShift action_83
action_53 (161) = happyShift action_84
action_53 (164) = happyShift action_85
action_53 (165) = happyShift action_86
action_53 (166) = happyShift action_87
action_53 (167) = happyShift action_88
action_53 (173) = happyShift action_89
action_53 (178) = happyShift action_90
action_53 (179) = happyShift action_91
action_53 (180) = happyShift action_92
action_53 (181) = happyShift action_93
action_53 (185) = happyShift action_57
action_53 (186) = happyShift action_94
action_53 (187) = happyShift action_95
action_53 (188) = happyShift action_96
action_53 (189) = happyShift action_97
action_53 (59) = happyGoto action_60
action_53 (60) = happyGoto action_61
action_53 (61) = happyGoto action_62
action_53 (62) = happyGoto action_63
action_53 (63) = happyGoto action_64
action_53 (70) = happyGoto action_65
action_53 (71) = happyGoto action_66
action_53 (85) = happyGoto action_67
action_53 (86) = happyGoto action_68
action_53 (87) = happyGoto action_69
action_53 (104) = happyGoto action_70
action_53 (110) = happyGoto action_71
action_53 (111) = happyGoto action_72
action_53 (112) = happyGoto action_73
action_53 (113) = happyGoto action_74
action_53 (114) = happyGoto action_75
action_53 (115) = happyGoto action_76
action_53 (117) = happyGoto action_98
action_53 (118) = happyGoto action_99
action_53 (119) = happyGoto action_78
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (120) = happyShift action_79
action_54 (122) = happyShift action_80
action_54 (123) = happyShift action_59
action_54 (125) = happyShift action_81
action_54 (128) = happyShift action_82
action_54 (154) = happyShift action_83
action_54 (161) = happyShift action_84
action_54 (164) = happyShift action_85
action_54 (165) = happyShift action_86
action_54 (166) = happyShift action_87
action_54 (167) = happyShift action_88
action_54 (173) = happyShift action_89
action_54 (178) = happyShift action_90
action_54 (179) = happyShift action_91
action_54 (180) = happyShift action_92
action_54 (181) = happyShift action_93
action_54 (185) = happyShift action_57
action_54 (186) = happyShift action_94
action_54 (187) = happyShift action_95
action_54 (188) = happyShift action_96
action_54 (189) = happyShift action_97
action_54 (59) = happyGoto action_60
action_54 (60) = happyGoto action_61
action_54 (61) = happyGoto action_62
action_54 (62) = happyGoto action_63
action_54 (63) = happyGoto action_64
action_54 (70) = happyGoto action_65
action_54 (71) = happyGoto action_66
action_54 (85) = happyGoto action_67
action_54 (86) = happyGoto action_68
action_54 (87) = happyGoto action_69
action_54 (104) = happyGoto action_70
action_54 (110) = happyGoto action_71
action_54 (111) = happyGoto action_72
action_54 (112) = happyGoto action_73
action_54 (113) = happyGoto action_74
action_54 (114) = happyGoto action_75
action_54 (115) = happyGoto action_76
action_54 (118) = happyGoto action_77
action_54 (119) = happyGoto action_78
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (123) = happyShift action_59
action_55 (119) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (185) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_56

action_58 (190) = happyAccept
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (120) = happyShift action_79
action_59 (122) = happyShift action_80
action_59 (123) = happyShift action_59
action_59 (125) = happyShift action_81
action_59 (128) = happyShift action_82
action_59 (154) = happyShift action_83
action_59 (161) = happyShift action_84
action_59 (162) = happyShift action_104
action_59 (164) = happyShift action_85
action_59 (165) = happyShift action_86
action_59 (166) = happyShift action_87
action_59 (167) = happyShift action_88
action_59 (173) = happyShift action_89
action_59 (178) = happyShift action_90
action_59 (179) = happyShift action_91
action_59 (180) = happyShift action_92
action_59 (181) = happyShift action_93
action_59 (185) = happyShift action_57
action_59 (186) = happyShift action_94
action_59 (187) = happyShift action_95
action_59 (188) = happyShift action_96
action_59 (189) = happyShift action_97
action_59 (59) = happyGoto action_60
action_59 (60) = happyGoto action_61
action_59 (61) = happyGoto action_62
action_59 (62) = happyGoto action_63
action_59 (63) = happyGoto action_64
action_59 (70) = happyGoto action_65
action_59 (71) = happyGoto action_66
action_59 (85) = happyGoto action_67
action_59 (86) = happyGoto action_68
action_59 (87) = happyGoto action_69
action_59 (104) = happyGoto action_70
action_59 (107) = happyGoto action_292
action_59 (108) = happyGoto action_100
action_59 (109) = happyGoto action_101
action_59 (110) = happyGoto action_71
action_59 (111) = happyGoto action_72
action_59 (112) = happyGoto action_73
action_59 (113) = happyGoto action_74
action_59 (114) = happyGoto action_75
action_59 (115) = happyGoto action_76
action_59 (116) = happyGoto action_115
action_59 (117) = happyGoto action_103
action_59 (118) = happyGoto action_99
action_59 (119) = happyGoto action_78
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_194

action_61 _ = happyReduce_192

action_62 _ = happyReduce_189

action_63 _ = happyReduce_193

action_64 (123) = happyShift action_248
action_64 (144) = happyShift action_117
action_64 (105) = happyGoto action_278
action_64 (106) = happyGoto action_119
action_64 _ = happyReduce_156

action_65 _ = happyReduce_195

action_66 _ = happyReduce_196

action_67 _ = happyReduce_185

action_68 _ = happyReduce_114

action_69 _ = happyReduce_115

action_70 _ = happyReduce_190

action_71 (126) = happyShift action_272
action_71 (128) = happyShift action_273
action_71 _ = happyReduce_200

action_72 (121) = happyShift action_274
action_72 (125) = happyShift action_275
action_72 (130) = happyShift action_276
action_72 _ = happyReduce_176

action_73 _ = happyReduce_180

action_74 (146) = happyShift action_291
action_74 _ = happyReduce_182

action_75 (129) = happyShift action_277
action_75 _ = happyReduce_184

action_76 _ = happyReduce_188

action_77 (190) = happyAccept
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_197

action_79 (122) = happyShift action_80
action_79 (123) = happyShift action_59
action_79 (125) = happyShift action_81
action_79 (154) = happyShift action_83
action_79 (161) = happyShift action_84
action_79 (173) = happyShift action_89
action_79 (185) = happyShift action_57
action_79 (186) = happyShift action_94
action_79 (187) = happyShift action_95
action_79 (188) = happyShift action_96
action_79 (189) = happyShift action_97
action_79 (59) = happyGoto action_60
action_79 (60) = happyGoto action_61
action_79 (61) = happyGoto action_62
action_79 (62) = happyGoto action_63
action_79 (63) = happyGoto action_105
action_79 (70) = happyGoto action_65
action_79 (71) = happyGoto action_66
action_79 (104) = happyGoto action_70
action_79 (115) = happyGoto action_290
action_79 (119) = happyGoto action_78
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (125) = happyShift action_81
action_80 (189) = happyShift action_97
action_80 (63) = happyGoto action_105
action_80 (104) = happyGoto action_289
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (125) = happyShift action_81
action_81 (189) = happyShift action_97
action_81 (63) = happyGoto action_105
action_81 (104) = happyGoto action_226
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (120) = happyShift action_79
action_82 (122) = happyShift action_80
action_82 (123) = happyShift action_59
action_82 (125) = happyShift action_81
action_82 (154) = happyShift action_83
action_82 (161) = happyShift action_84
action_82 (164) = happyShift action_85
action_82 (165) = happyShift action_86
action_82 (166) = happyShift action_87
action_82 (167) = happyShift action_88
action_82 (173) = happyShift action_89
action_82 (178) = happyShift action_90
action_82 (179) = happyShift action_91
action_82 (180) = happyShift action_92
action_82 (181) = happyShift action_93
action_82 (185) = happyShift action_57
action_82 (186) = happyShift action_94
action_82 (187) = happyShift action_95
action_82 (188) = happyShift action_96
action_82 (189) = happyShift action_97
action_82 (59) = happyGoto action_60
action_82 (60) = happyGoto action_61
action_82 (61) = happyGoto action_62
action_82 (62) = happyGoto action_63
action_82 (63) = happyGoto action_64
action_82 (70) = happyGoto action_65
action_82 (71) = happyGoto action_66
action_82 (85) = happyGoto action_67
action_82 (86) = happyGoto action_68
action_82 (87) = happyGoto action_69
action_82 (104) = happyGoto action_70
action_82 (114) = happyGoto action_288
action_82 (115) = happyGoto action_76
action_82 (119) = happyGoto action_78
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_76

action_84 _ = happyReduce_77

action_85 (123) = happyShift action_287
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (123) = happyShift action_286
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (123) = happyShift action_285
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (123) = happyShift action_284
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_75

action_90 (123) = happyShift action_283
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (123) = happyShift action_282
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (123) = happyShift action_281
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (123) = happyShift action_280
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_57

action_95 _ = happyReduce_58

action_96 _ = happyReduce_59

action_97 _ = happyReduce_60

action_98 (190) = happyAccept
action_98 _ = happyFail (happyExpListPerState 98)

action_99 _ = happyReduce_199

action_100 _ = happyReduce_198

action_101 (132) = happyShift action_266
action_101 (133) = happyShift action_267
action_101 (135) = happyShift action_268
action_101 (136) = happyShift action_269
action_101 (137) = happyShift action_270
action_101 (184) = happyShift action_271
action_101 _ = happyReduce_166

action_102 (190) = happyAccept
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_173

action_104 (120) = happyShift action_79
action_104 (122) = happyShift action_80
action_104 (123) = happyShift action_59
action_104 (125) = happyShift action_81
action_104 (128) = happyShift action_82
action_104 (154) = happyShift action_83
action_104 (161) = happyShift action_84
action_104 (164) = happyShift action_85
action_104 (165) = happyShift action_86
action_104 (166) = happyShift action_87
action_104 (167) = happyShift action_88
action_104 (173) = happyShift action_89
action_104 (178) = happyShift action_90
action_104 (179) = happyShift action_91
action_104 (180) = happyShift action_92
action_104 (181) = happyShift action_93
action_104 (185) = happyShift action_57
action_104 (186) = happyShift action_94
action_104 (187) = happyShift action_95
action_104 (188) = happyShift action_96
action_104 (189) = happyShift action_97
action_104 (59) = happyGoto action_60
action_104 (60) = happyGoto action_61
action_104 (61) = happyGoto action_62
action_104 (62) = happyGoto action_63
action_104 (63) = happyGoto action_64
action_104 (70) = happyGoto action_65
action_104 (71) = happyGoto action_66
action_104 (85) = happyGoto action_67
action_104 (86) = happyGoto action_68
action_104 (87) = happyGoto action_69
action_104 (104) = happyGoto action_70
action_104 (109) = happyGoto action_279
action_104 (110) = happyGoto action_71
action_104 (111) = happyGoto action_72
action_104 (112) = happyGoto action_73
action_104 (113) = happyGoto action_74
action_104 (114) = happyGoto action_75
action_104 (115) = happyGoto action_76
action_104 (117) = happyGoto action_103
action_104 (118) = happyGoto action_99
action_104 (119) = happyGoto action_78
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (144) = happyShift action_117
action_105 (105) = happyGoto action_278
action_105 (106) = happyGoto action_119
action_105 _ = happyReduce_156

action_106 (190) = happyAccept
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (129) = happyShift action_277
action_107 (190) = happyAccept
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (190) = happyAccept
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (190) = happyAccept
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (121) = happyShift action_274
action_110 (125) = happyShift action_275
action_110 (130) = happyShift action_276
action_110 (190) = happyAccept
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (126) = happyShift action_272
action_111 (128) = happyShift action_273
action_111 (190) = happyAccept
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (132) = happyShift action_266
action_112 (133) = happyShift action_267
action_112 (135) = happyShift action_268
action_112 (136) = happyShift action_269
action_112 (137) = happyShift action_270
action_112 (184) = happyShift action_271
action_112 (190) = happyAccept
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (190) = happyAccept
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (163) = happyShift action_258
action_114 (190) = happyAccept
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (147) = happyShift action_265
action_115 _ = happyReduce_164

action_116 (190) = happyAccept
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (120) = happyShift action_79
action_117 (122) = happyShift action_80
action_117 (123) = happyShift action_59
action_117 (125) = happyShift action_81
action_117 (128) = happyShift action_82
action_117 (154) = happyShift action_83
action_117 (161) = happyShift action_84
action_117 (162) = happyShift action_104
action_117 (164) = happyShift action_85
action_117 (165) = happyShift action_86
action_117 (166) = happyShift action_87
action_117 (167) = happyShift action_88
action_117 (173) = happyShift action_89
action_117 (178) = happyShift action_90
action_117 (179) = happyShift action_91
action_117 (180) = happyShift action_92
action_117 (181) = happyShift action_93
action_117 (185) = happyShift action_57
action_117 (186) = happyShift action_94
action_117 (187) = happyShift action_95
action_117 (188) = happyShift action_96
action_117 (189) = happyShift action_97
action_117 (59) = happyGoto action_60
action_117 (60) = happyGoto action_61
action_117 (61) = happyGoto action_62
action_117 (62) = happyGoto action_63
action_117 (63) = happyGoto action_64
action_117 (70) = happyGoto action_65
action_117 (71) = happyGoto action_66
action_117 (85) = happyGoto action_67
action_117 (86) = happyGoto action_68
action_117 (87) = happyGoto action_69
action_117 (104) = happyGoto action_70
action_117 (107) = happyGoto action_264
action_117 (108) = happyGoto action_100
action_117 (109) = happyGoto action_101
action_117 (110) = happyGoto action_71
action_117 (111) = happyGoto action_72
action_117 (112) = happyGoto action_73
action_117 (113) = happyGoto action_74
action_117 (114) = happyGoto action_75
action_117 (115) = happyGoto action_76
action_117 (116) = happyGoto action_115
action_117 (117) = happyGoto action_103
action_117 (118) = happyGoto action_99
action_117 (119) = happyGoto action_78
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (190) = happyAccept
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (144) = happyShift action_117
action_119 (105) = happyGoto action_263
action_119 (106) = happyGoto action_119
action_119 _ = happyReduce_159

action_120 (190) = happyAccept
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (190) = happyAccept
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_152

action_123 _ = happyReduce_155

action_124 _ = happyReduce_151

action_125 _ = happyReduce_153

action_126 _ = happyReduce_150

action_127 _ = happyReduce_154

action_128 (127) = happyShift action_262
action_128 _ = happyReduce_147

action_129 (190) = happyAccept
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (138) = happyShift action_136
action_130 (139) = happyShift action_137
action_130 (140) = happyShift action_138
action_130 (141) = happyShift action_139
action_130 (142) = happyShift action_140
action_130 (143) = happyShift action_141
action_130 (69) = happyGoto action_261
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (190) = happyAccept
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (144) = happyShift action_206
action_132 (73) = happyGoto action_204
action_132 (74) = happyGoto action_227
action_132 _ = happyReduce_78

action_133 (156) = happyShift action_260
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (190) = happyAccept
action_134 _ = happyFail (happyExpListPerState 134)

action_135 (125) = happyShift action_135
action_135 (138) = happyShift action_136
action_135 (139) = happyShift action_137
action_135 (140) = happyShift action_138
action_135 (141) = happyShift action_139
action_135 (142) = happyShift action_140
action_135 (143) = happyShift action_141
action_135 (69) = happyGoto action_132
action_135 (72) = happyGoto action_225
action_135 _ = happyFail (happyExpListPerState 135)

action_136 _ = happyReduce_69

action_137 _ = happyReduce_70

action_138 _ = happyReduce_71

action_139 _ = happyReduce_72

action_140 _ = happyReduce_73

action_141 _ = happyReduce_74

action_142 (190) = happyAccept
action_142 _ = happyFail (happyExpListPerState 142)

action_143 (127) = happyShift action_259
action_143 (163) = happyShift action_258
action_143 _ = happyReduce_142

action_144 (190) = happyAccept
action_144 _ = happyFail (happyExpListPerState 144)

action_145 _ = happyReduce_140

action_146 (190) = happyAccept
action_146 _ = happyFail (happyExpListPerState 146)

action_147 (163) = happyShift action_258
action_147 _ = happyReduce_139

action_148 (190) = happyAccept
action_148 _ = happyFail (happyExpListPerState 148)

action_149 (120) = happyShift action_79
action_149 (122) = happyShift action_80
action_149 (123) = happyShift action_59
action_149 (125) = happyShift action_81
action_149 (128) = happyShift action_82
action_149 (154) = happyShift action_83
action_149 (161) = happyShift action_84
action_149 (162) = happyShift action_104
action_149 (164) = happyShift action_85
action_149 (165) = happyShift action_86
action_149 (166) = happyShift action_87
action_149 (167) = happyShift action_88
action_149 (173) = happyShift action_89
action_149 (178) = happyShift action_90
action_149 (179) = happyShift action_91
action_149 (180) = happyShift action_92
action_149 (181) = happyShift action_93
action_149 (185) = happyShift action_57
action_149 (186) = happyShift action_94
action_149 (187) = happyShift action_95
action_149 (188) = happyShift action_96
action_149 (189) = happyShift action_97
action_149 (59) = happyGoto action_60
action_149 (60) = happyGoto action_61
action_149 (61) = happyGoto action_62
action_149 (62) = happyGoto action_63
action_149 (63) = happyGoto action_64
action_149 (70) = happyGoto action_65
action_149 (71) = happyGoto action_66
action_149 (85) = happyGoto action_67
action_149 (86) = happyGoto action_68
action_149 (87) = happyGoto action_69
action_149 (97) = happyGoto action_257
action_149 (104) = happyGoto action_70
action_149 (107) = happyGoto action_147
action_149 (108) = happyGoto action_100
action_149 (109) = happyGoto action_101
action_149 (110) = happyGoto action_71
action_149 (111) = happyGoto action_72
action_149 (112) = happyGoto action_73
action_149 (113) = happyGoto action_74
action_149 (114) = happyGoto action_75
action_149 (115) = happyGoto action_76
action_149 (116) = happyGoto action_115
action_149 (117) = happyGoto action_103
action_149 (118) = happyGoto action_99
action_149 (119) = happyGoto action_78
action_149 _ = happyReduce_138

action_150 (152) = happyShift action_152
action_150 (190) = happyAccept
action_150 (94) = happyGoto action_256
action_150 _ = happyFail (happyExpListPerState 150)

action_151 (190) = happyAccept
action_151 _ = happyFail (happyExpListPerState 151)

action_152 (120) = happyShift action_79
action_152 (122) = happyShift action_80
action_152 (123) = happyShift action_59
action_152 (125) = happyShift action_81
action_152 (128) = happyShift action_82
action_152 (154) = happyShift action_83
action_152 (161) = happyShift action_84
action_152 (162) = happyShift action_104
action_152 (164) = happyShift action_85
action_152 (165) = happyShift action_86
action_152 (166) = happyShift action_87
action_152 (167) = happyShift action_88
action_152 (173) = happyShift action_89
action_152 (178) = happyShift action_90
action_152 (179) = happyShift action_91
action_152 (180) = happyShift action_92
action_152 (181) = happyShift action_93
action_152 (185) = happyShift action_57
action_152 (186) = happyShift action_94
action_152 (187) = happyShift action_95
action_152 (188) = happyShift action_96
action_152 (189) = happyShift action_97
action_152 (59) = happyGoto action_60
action_152 (60) = happyGoto action_61
action_152 (61) = happyGoto action_62
action_152 (62) = happyGoto action_63
action_152 (63) = happyGoto action_64
action_152 (70) = happyGoto action_65
action_152 (71) = happyGoto action_66
action_152 (85) = happyGoto action_67
action_152 (86) = happyGoto action_68
action_152 (87) = happyGoto action_69
action_152 (104) = happyGoto action_70
action_152 (107) = happyGoto action_255
action_152 (108) = happyGoto action_100
action_152 (109) = happyGoto action_101
action_152 (110) = happyGoto action_71
action_152 (111) = happyGoto action_72
action_152 (112) = happyGoto action_73
action_152 (113) = happyGoto action_74
action_152 (114) = happyGoto action_75
action_152 (115) = happyGoto action_76
action_152 (116) = happyGoto action_115
action_152 (117) = happyGoto action_103
action_152 (118) = happyGoto action_99
action_152 (119) = happyGoto action_78
action_152 _ = happyFail (happyExpListPerState 152)

action_153 (190) = happyAccept
action_153 _ = happyFail (happyExpListPerState 153)

action_154 (67) = happyGoto action_254
action_154 (68) = happyGoto action_214
action_154 _ = happyReduce_67

action_155 (190) = happyAccept
action_155 _ = happyFail (happyExpListPerState 155)

action_156 (120) = happyShift action_79
action_156 (122) = happyShift action_80
action_156 (123) = happyShift action_59
action_156 (125) = happyShift action_81
action_156 (128) = happyShift action_82
action_156 (154) = happyShift action_83
action_156 (161) = happyShift action_84
action_156 (162) = happyShift action_104
action_156 (164) = happyShift action_85
action_156 (165) = happyShift action_86
action_156 (166) = happyShift action_87
action_156 (167) = happyShift action_88
action_156 (173) = happyShift action_89
action_156 (178) = happyShift action_90
action_156 (179) = happyShift action_91
action_156 (180) = happyShift action_92
action_156 (181) = happyShift action_93
action_156 (185) = happyShift action_57
action_156 (186) = happyShift action_94
action_156 (187) = happyShift action_95
action_156 (188) = happyShift action_96
action_156 (189) = happyShift action_97
action_156 (59) = happyGoto action_60
action_156 (60) = happyGoto action_61
action_156 (61) = happyGoto action_62
action_156 (62) = happyGoto action_63
action_156 (63) = happyGoto action_64
action_156 (70) = happyGoto action_65
action_156 (71) = happyGoto action_66
action_156 (85) = happyGoto action_67
action_156 (86) = happyGoto action_68
action_156 (87) = happyGoto action_69
action_156 (104) = happyGoto action_70
action_156 (107) = happyGoto action_253
action_156 (108) = happyGoto action_100
action_156 (109) = happyGoto action_101
action_156 (110) = happyGoto action_71
action_156 (111) = happyGoto action_72
action_156 (112) = happyGoto action_73
action_156 (113) = happyGoto action_74
action_156 (114) = happyGoto action_75
action_156 (115) = happyGoto action_76
action_156 (116) = happyGoto action_115
action_156 (117) = happyGoto action_103
action_156 (118) = happyGoto action_99
action_156 (119) = happyGoto action_78
action_156 _ = happyFail (happyExpListPerState 156)

action_157 (190) = happyAccept
action_157 _ = happyFail (happyExpListPerState 157)

action_158 (120) = happyShift action_79
action_158 (122) = happyShift action_80
action_158 (123) = happyShift action_59
action_158 (125) = happyShift action_81
action_158 (128) = happyShift action_82
action_158 (154) = happyShift action_83
action_158 (161) = happyShift action_84
action_158 (162) = happyShift action_104
action_158 (164) = happyShift action_85
action_158 (165) = happyShift action_86
action_158 (166) = happyShift action_87
action_158 (167) = happyShift action_88
action_158 (173) = happyShift action_89
action_158 (178) = happyShift action_90
action_158 (179) = happyShift action_91
action_158 (180) = happyShift action_92
action_158 (181) = happyShift action_93
action_158 (185) = happyShift action_57
action_158 (186) = happyShift action_94
action_158 (187) = happyShift action_95
action_158 (188) = happyShift action_96
action_158 (189) = happyShift action_97
action_158 (59) = happyGoto action_60
action_158 (60) = happyGoto action_61
action_158 (61) = happyGoto action_62
action_158 (62) = happyGoto action_63
action_158 (63) = happyGoto action_64
action_158 (70) = happyGoto action_65
action_158 (71) = happyGoto action_66
action_158 (85) = happyGoto action_67
action_158 (86) = happyGoto action_68
action_158 (87) = happyGoto action_69
action_158 (104) = happyGoto action_70
action_158 (107) = happyGoto action_252
action_158 (108) = happyGoto action_100
action_158 (109) = happyGoto action_101
action_158 (110) = happyGoto action_71
action_158 (111) = happyGoto action_72
action_158 (112) = happyGoto action_73
action_158 (113) = happyGoto action_74
action_158 (114) = happyGoto action_75
action_158 (115) = happyGoto action_76
action_158 (116) = happyGoto action_115
action_158 (117) = happyGoto action_103
action_158 (118) = happyGoto action_99
action_158 (119) = happyGoto action_78
action_158 _ = happyFail (happyExpListPerState 158)

action_159 (190) = happyAccept
action_159 _ = happyFail (happyExpListPerState 159)

action_160 (189) = happyShift action_97
action_160 (63) = happyGoto action_251
action_160 _ = happyFail (happyExpListPerState 160)

action_161 (190) = happyAccept
action_161 _ = happyFail (happyExpListPerState 161)

action_162 (67) = happyGoto action_250
action_162 (68) = happyGoto action_214
action_162 _ = happyReduce_67

action_163 (190) = happyAccept
action_163 _ = happyFail (happyExpListPerState 163)

action_164 (120) = happyShift action_79
action_164 (122) = happyShift action_80
action_164 (123) = happyShift action_59
action_164 (125) = happyShift action_81
action_164 (128) = happyShift action_82
action_164 (154) = happyShift action_83
action_164 (161) = happyShift action_84
action_164 (162) = happyShift action_104
action_164 (164) = happyShift action_85
action_164 (165) = happyShift action_86
action_164 (166) = happyShift action_87
action_164 (167) = happyShift action_88
action_164 (173) = happyShift action_89
action_164 (178) = happyShift action_90
action_164 (179) = happyShift action_91
action_164 (180) = happyShift action_92
action_164 (181) = happyShift action_93
action_164 (185) = happyShift action_57
action_164 (186) = happyShift action_94
action_164 (187) = happyShift action_95
action_164 (188) = happyShift action_96
action_164 (189) = happyShift action_97
action_164 (59) = happyGoto action_60
action_164 (60) = happyGoto action_61
action_164 (61) = happyGoto action_62
action_164 (62) = happyGoto action_63
action_164 (63) = happyGoto action_64
action_164 (70) = happyGoto action_65
action_164 (71) = happyGoto action_66
action_164 (85) = happyGoto action_67
action_164 (86) = happyGoto action_68
action_164 (87) = happyGoto action_69
action_164 (104) = happyGoto action_70
action_164 (107) = happyGoto action_249
action_164 (108) = happyGoto action_100
action_164 (109) = happyGoto action_101
action_164 (110) = happyGoto action_71
action_164 (111) = happyGoto action_72
action_164 (112) = happyGoto action_73
action_164 (113) = happyGoto action_74
action_164 (114) = happyGoto action_75
action_164 (115) = happyGoto action_76
action_164 (116) = happyGoto action_115
action_164 (117) = happyGoto action_103
action_164 (118) = happyGoto action_99
action_164 (119) = happyGoto action_78
action_164 _ = happyFail (happyExpListPerState 164)

action_165 (190) = happyAccept
action_165 _ = happyFail (happyExpListPerState 165)

action_166 (190) = happyAccept
action_166 _ = happyFail (happyExpListPerState 166)

action_167 (123) = happyShift action_248
action_167 _ = happyFail (happyExpListPerState 167)

action_168 (190) = happyAccept
action_168 _ = happyFail (happyExpListPerState 168)

action_169 (190) = happyAccept
action_169 _ = happyFail (happyExpListPerState 169)

action_170 (134) = happyShift action_247
action_170 _ = happyFail (happyExpListPerState 170)

action_171 (190) = happyAccept
action_171 _ = happyFail (happyExpListPerState 171)

action_172 (138) = happyShift action_136
action_172 (139) = happyShift action_137
action_172 (140) = happyShift action_138
action_172 (141) = happyShift action_139
action_172 (142) = happyShift action_140
action_172 (143) = happyShift action_141
action_172 (69) = happyGoto action_188
action_172 (77) = happyGoto action_246
action_172 _ = happyFail (happyExpListPerState 172)

action_173 (127) = happyShift action_245
action_173 _ = happyReduce_110

action_174 (190) = happyAccept
action_174 _ = happyFail (happyExpListPerState 174)

action_175 (154) = happyShift action_83
action_175 (161) = happyShift action_84
action_175 (173) = happyShift action_89
action_175 (182) = happyShift action_175
action_175 (185) = happyShift action_57
action_175 (186) = happyShift action_94
action_175 (187) = happyShift action_95
action_175 (188) = happyShift action_96
action_175 (59) = happyGoto action_176
action_175 (60) = happyGoto action_177
action_175 (61) = happyGoto action_178
action_175 (62) = happyGoto action_179
action_175 (70) = happyGoto action_180
action_175 (71) = happyGoto action_181
action_175 (79) = happyGoto action_173
action_175 (80) = happyGoto action_182
action_175 (81) = happyGoto action_243
action_175 (82) = happyGoto action_244
action_175 _ = happyFail (happyExpListPerState 175)

action_176 _ = happyReduce_103

action_177 _ = happyReduce_104

action_178 _ = happyReduce_105

action_179 _ = happyReduce_106

action_180 _ = happyReduce_102

action_181 _ = happyReduce_107

action_182 (127) = happyShift action_242
action_182 _ = happyReduce_108

action_183 (190) = happyAccept
action_183 _ = happyFail (happyExpListPerState 183)

action_184 (190) = happyAccept
action_184 _ = happyFail (happyExpListPerState 184)

action_185 (190) = happyAccept
action_185 _ = happyFail (happyExpListPerState 185)

action_186 (190) = happyAccept
action_186 _ = happyFail (happyExpListPerState 186)

action_187 (120) = happyShift action_79
action_187 (122) = happyShift action_80
action_187 (123) = happyShift action_59
action_187 (125) = happyShift action_81
action_187 (128) = happyShift action_82
action_187 (154) = happyShift action_83
action_187 (161) = happyShift action_84
action_187 (162) = happyShift action_104
action_187 (164) = happyShift action_85
action_187 (165) = happyShift action_86
action_187 (166) = happyShift action_87
action_187 (167) = happyShift action_88
action_187 (173) = happyShift action_89
action_187 (178) = happyShift action_90
action_187 (179) = happyShift action_91
action_187 (180) = happyShift action_92
action_187 (181) = happyShift action_93
action_187 (182) = happyShift action_175
action_187 (185) = happyShift action_57
action_187 (186) = happyShift action_94
action_187 (187) = happyShift action_95
action_187 (188) = happyShift action_96
action_187 (189) = happyShift action_97
action_187 (59) = happyGoto action_60
action_187 (60) = happyGoto action_61
action_187 (61) = happyGoto action_62
action_187 (62) = happyGoto action_63
action_187 (63) = happyGoto action_64
action_187 (70) = happyGoto action_65
action_187 (71) = happyGoto action_66
action_187 (79) = happyGoto action_240
action_187 (85) = happyGoto action_67
action_187 (86) = happyGoto action_68
action_187 (87) = happyGoto action_69
action_187 (104) = happyGoto action_70
action_187 (107) = happyGoto action_241
action_187 (108) = happyGoto action_100
action_187 (109) = happyGoto action_101
action_187 (110) = happyGoto action_71
action_187 (111) = happyGoto action_72
action_187 (112) = happyGoto action_73
action_187 (113) = happyGoto action_74
action_187 (114) = happyGoto action_75
action_187 (115) = happyGoto action_76
action_187 (116) = happyGoto action_115
action_187 (117) = happyGoto action_103
action_187 (118) = happyGoto action_99
action_187 (119) = happyGoto action_78
action_187 _ = happyFail (happyExpListPerState 187)

action_188 (125) = happyShift action_81
action_188 (189) = happyShift action_97
action_188 (63) = happyGoto action_105
action_188 (104) = happyGoto action_228
action_188 _ = happyFail (happyExpListPerState 188)

action_189 (190) = happyAccept
action_189 _ = happyFail (happyExpListPerState 189)

action_190 (190) = happyAccept
action_190 _ = happyFail (happyExpListPerState 190)

action_191 (67) = happyGoto action_239
action_191 (68) = happyGoto action_214
action_191 _ = happyReduce_67

action_192 (190) = happyAccept
action_192 _ = happyFail (happyExpListPerState 192)

action_193 _ = happyReduce_92

action_194 (131) = happyShift action_238
action_194 _ = happyFail (happyExpListPerState 194)

action_195 (131) = happyShift action_237
action_195 _ = happyFail (happyExpListPerState 195)

action_196 (131) = happyShift action_236
action_196 _ = happyFail (happyExpListPerState 196)

action_197 (131) = happyShift action_235
action_197 _ = happyFail (happyExpListPerState 197)

action_198 _ = happyReduce_87

action_199 (131) = happyShift action_234
action_199 _ = happyFail (happyExpListPerState 199)

action_200 _ = happyReduce_89

action_201 _ = happyReduce_90

action_202 (131) = happyShift action_233
action_202 _ = happyFail (happyExpListPerState 202)

action_203 (131) = happyShift action_232
action_203 _ = happyFail (happyExpListPerState 203)

action_204 (144) = happyShift action_206
action_204 (73) = happyGoto action_204
action_204 (74) = happyGoto action_231
action_204 _ = happyReduce_82

action_205 (190) = happyAccept
action_205 _ = happyFail (happyExpListPerState 205)

action_206 (145) = happyShift action_230
action_206 _ = happyFail (happyExpListPerState 206)

action_207 (190) = happyAccept
action_207 _ = happyFail (happyExpListPerState 207)

action_208 (190) = happyAccept
action_208 _ = happyFail (happyExpListPerState 208)

action_209 (190) = happyAccept
action_209 _ = happyFail (happyExpListPerState 209)

action_210 (190) = happyAccept
action_210 _ = happyFail (happyExpListPerState 210)

action_211 (190) = happyAccept
action_211 _ = happyFail (happyExpListPerState 211)

action_212 (125) = happyShift action_81
action_212 (138) = happyShift action_136
action_212 (139) = happyShift action_137
action_212 (140) = happyShift action_138
action_212 (141) = happyShift action_139
action_212 (142) = happyShift action_140
action_212 (143) = happyShift action_141
action_212 (148) = happyShift action_145
action_212 (150) = happyShift action_191
action_212 (155) = happyShift action_160
action_212 (157) = happyShift action_156
action_212 (159) = happyShift action_172
action_212 (164) = happyShift action_85
action_212 (165) = happyShift action_86
action_212 (166) = happyShift action_87
action_212 (167) = happyShift action_88
action_212 (169) = happyShift action_162
action_212 (171) = happyShift action_149
action_212 (177) = happyShift action_164
action_212 (178) = happyShift action_90
action_212 (179) = happyShift action_91
action_212 (180) = happyShift action_92
action_212 (181) = happyShift action_93
action_212 (189) = happyShift action_97
action_212 (190) = happyAccept
action_212 (63) = happyGoto action_64
action_212 (69) = happyGoto action_188
action_212 (75) = happyGoto action_229
action_212 (76) = happyGoto action_193
action_212 (77) = happyGoto action_194
action_212 (83) = happyGoto action_195
action_212 (84) = happyGoto action_196
action_212 (85) = happyGoto action_197
action_212 (86) = happyGoto action_68
action_212 (87) = happyGoto action_69
action_212 (88) = happyGoto action_198
action_212 (89) = happyGoto action_199
action_212 (90) = happyGoto action_200
action_212 (92) = happyGoto action_201
action_212 (96) = happyGoto action_202
action_212 (98) = happyGoto action_203
action_212 (104) = happyGoto action_170
action_212 _ = happyFail (happyExpListPerState 212)

action_213 (190) = happyAccept
action_213 _ = happyFail (happyExpListPerState 213)

action_214 (125) = happyShift action_81
action_214 (138) = happyShift action_136
action_214 (139) = happyShift action_137
action_214 (140) = happyShift action_138
action_214 (141) = happyShift action_139
action_214 (142) = happyShift action_140
action_214 (143) = happyShift action_141
action_214 (148) = happyShift action_145
action_214 (150) = happyShift action_191
action_214 (155) = happyShift action_160
action_214 (157) = happyShift action_156
action_214 (159) = happyShift action_172
action_214 (164) = happyShift action_85
action_214 (165) = happyShift action_86
action_214 (166) = happyShift action_87
action_214 (167) = happyShift action_88
action_214 (169) = happyShift action_162
action_214 (171) = happyShift action_149
action_214 (177) = happyShift action_164
action_214 (178) = happyShift action_90
action_214 (179) = happyShift action_91
action_214 (180) = happyShift action_92
action_214 (181) = happyShift action_93
action_214 (189) = happyShift action_97
action_214 (63) = happyGoto action_64
action_214 (69) = happyGoto action_188
action_214 (75) = happyGoto action_229
action_214 (76) = happyGoto action_193
action_214 (77) = happyGoto action_194
action_214 (83) = happyGoto action_195
action_214 (84) = happyGoto action_196
action_214 (85) = happyGoto action_197
action_214 (86) = happyGoto action_68
action_214 (87) = happyGoto action_69
action_214 (88) = happyGoto action_198
action_214 (89) = happyGoto action_199
action_214 (90) = happyGoto action_200
action_214 (92) = happyGoto action_201
action_214 (96) = happyGoto action_202
action_214 (98) = happyGoto action_203
action_214 (104) = happyGoto action_170
action_214 _ = happyReduce_66

action_215 (190) = happyAccept
action_215 _ = happyFail (happyExpListPerState 215)

action_216 (125) = happyShift action_81
action_216 (144) = happyShift action_206
action_216 (189) = happyShift action_97
action_216 (63) = happyGoto action_105
action_216 (73) = happyGoto action_204
action_216 (74) = happyGoto action_227
action_216 (104) = happyGoto action_228
action_216 _ = happyReduce_78

action_217 _ = happyReduce_64

action_218 _ = happyReduce_65

action_219 (125) = happyShift action_219
action_219 (138) = happyShift action_136
action_219 (139) = happyShift action_137
action_219 (140) = happyShift action_138
action_219 (141) = happyShift action_139
action_219 (142) = happyShift action_140
action_219 (143) = happyShift action_141
action_219 (189) = happyShift action_97
action_219 (63) = happyGoto action_105
action_219 (69) = happyGoto action_132
action_219 (72) = happyGoto action_225
action_219 (104) = happyGoto action_226
action_219 _ = happyFail (happyExpListPerState 219)

action_220 (190) = happyAccept
action_220 _ = happyFail (happyExpListPerState 220)

action_221 (125) = happyShift action_219
action_221 (138) = happyShift action_136
action_221 (139) = happyShift action_137
action_221 (140) = happyShift action_138
action_221 (141) = happyShift action_139
action_221 (142) = happyShift action_140
action_221 (143) = happyShift action_141
action_221 (148) = happyShift action_145
action_221 (150) = happyShift action_191
action_221 (155) = happyShift action_160
action_221 (157) = happyShift action_156
action_221 (159) = happyShift action_172
action_221 (164) = happyShift action_85
action_221 (165) = happyShift action_86
action_221 (166) = happyShift action_87
action_221 (167) = happyShift action_88
action_221 (169) = happyShift action_162
action_221 (171) = happyShift action_149
action_221 (177) = happyShift action_164
action_221 (178) = happyShift action_90
action_221 (179) = happyShift action_91
action_221 (180) = happyShift action_92
action_221 (181) = happyShift action_93
action_221 (189) = happyShift action_97
action_221 (63) = happyGoto action_64
action_221 (65) = happyGoto action_224
action_221 (66) = happyGoto action_221
action_221 (69) = happyGoto action_216
action_221 (72) = happyGoto action_133
action_221 (75) = happyGoto action_217
action_221 (76) = happyGoto action_193
action_221 (77) = happyGoto action_194
action_221 (83) = happyGoto action_195
action_221 (84) = happyGoto action_196
action_221 (85) = happyGoto action_197
action_221 (86) = happyGoto action_68
action_221 (87) = happyGoto action_69
action_221 (88) = happyGoto action_198
action_221 (89) = happyGoto action_199
action_221 (90) = happyGoto action_200
action_221 (92) = happyGoto action_201
action_221 (96) = happyGoto action_202
action_221 (98) = happyGoto action_203
action_221 (100) = happyGoto action_218
action_221 (104) = happyGoto action_170
action_221 _ = happyReduce_62

action_222 (190) = happyAccept
action_222 _ = happyFail (happyExpListPerState 222)

action_223 _ = happyReduce_61

action_224 _ = happyReduce_63

action_225 _ = happyReduce_79

action_226 _ = happyReduce_157

action_227 _ = happyReduce_80

action_228 (134) = happyShift action_187
action_228 (78) = happyGoto action_335
action_228 _ = happyReduce_97

action_229 _ = happyReduce_68

action_230 _ = happyReduce_81

action_231 _ = happyReduce_83

action_232 _ = happyReduce_94

action_233 _ = happyReduce_93

action_234 _ = happyReduce_88

action_235 _ = happyReduce_91

action_236 _ = happyReduce_86

action_237 _ = happyReduce_85

action_238 _ = happyReduce_84

action_239 (153) = happyShift action_334
action_239 _ = happyFail (happyExpListPerState 239)

action_240 _ = happyReduce_99

action_241 (163) = happyShift action_258
action_241 _ = happyReduce_98

action_242 (154) = happyShift action_83
action_242 (161) = happyShift action_84
action_242 (173) = happyShift action_89
action_242 (185) = happyShift action_57
action_242 (186) = happyShift action_94
action_242 (187) = happyShift action_95
action_242 (188) = happyShift action_96
action_242 (59) = happyGoto action_176
action_242 (60) = happyGoto action_177
action_242 (61) = happyGoto action_178
action_242 (62) = happyGoto action_179
action_242 (70) = happyGoto action_180
action_242 (71) = happyGoto action_181
action_242 (80) = happyGoto action_182
action_242 (81) = happyGoto action_333
action_242 _ = happyFail (happyExpListPerState 242)

action_243 (183) = happyShift action_332
action_243 _ = happyFail (happyExpListPerState 243)

action_244 (183) = happyShift action_331
action_244 _ = happyFail (happyExpListPerState 244)

action_245 (182) = happyShift action_175
action_245 (79) = happyGoto action_173
action_245 (82) = happyGoto action_330
action_245 _ = happyFail (happyExpListPerState 245)

action_246 _ = happyReduce_112

action_247 (120) = happyShift action_79
action_247 (122) = happyShift action_80
action_247 (123) = happyShift action_59
action_247 (125) = happyShift action_81
action_247 (128) = happyShift action_82
action_247 (154) = happyShift action_83
action_247 (161) = happyShift action_84
action_247 (162) = happyShift action_104
action_247 (164) = happyShift action_85
action_247 (165) = happyShift action_86
action_247 (166) = happyShift action_87
action_247 (167) = happyShift action_88
action_247 (173) = happyShift action_89
action_247 (178) = happyShift action_90
action_247 (179) = happyShift action_91
action_247 (180) = happyShift action_92
action_247 (181) = happyShift action_93
action_247 (185) = happyShift action_57
action_247 (186) = happyShift action_94
action_247 (187) = happyShift action_95
action_247 (188) = happyShift action_96
action_247 (189) = happyShift action_97
action_247 (59) = happyGoto action_60
action_247 (60) = happyGoto action_61
action_247 (61) = happyGoto action_62
action_247 (62) = happyGoto action_63
action_247 (63) = happyGoto action_64
action_247 (70) = happyGoto action_65
action_247 (71) = happyGoto action_66
action_247 (85) = happyGoto action_67
action_247 (86) = happyGoto action_68
action_247 (87) = happyGoto action_69
action_247 (104) = happyGoto action_70
action_247 (107) = happyGoto action_329
action_247 (108) = happyGoto action_100
action_247 (109) = happyGoto action_101
action_247 (110) = happyGoto action_71
action_247 (111) = happyGoto action_72
action_247 (112) = happyGoto action_73
action_247 (113) = happyGoto action_74
action_247 (114) = happyGoto action_75
action_247 (115) = happyGoto action_76
action_247 (116) = happyGoto action_115
action_247 (117) = happyGoto action_103
action_247 (118) = happyGoto action_99
action_247 (119) = happyGoto action_78
action_247 _ = happyFail (happyExpListPerState 247)

action_248 (120) = happyShift action_79
action_248 (122) = happyShift action_80
action_248 (123) = happyShift action_59
action_248 (125) = happyShift action_81
action_248 (128) = happyShift action_82
action_248 (154) = happyShift action_83
action_248 (161) = happyShift action_84
action_248 (162) = happyShift action_104
action_248 (164) = happyShift action_85
action_248 (165) = happyShift action_86
action_248 (166) = happyShift action_87
action_248 (167) = happyShift action_88
action_248 (173) = happyShift action_89
action_248 (178) = happyShift action_90
action_248 (179) = happyShift action_91
action_248 (180) = happyShift action_92
action_248 (181) = happyShift action_93
action_248 (185) = happyShift action_57
action_248 (186) = happyShift action_94
action_248 (187) = happyShift action_95
action_248 (188) = happyShift action_96
action_248 (189) = happyShift action_97
action_248 (59) = happyGoto action_60
action_248 (60) = happyGoto action_61
action_248 (61) = happyGoto action_62
action_248 (62) = happyGoto action_63
action_248 (63) = happyGoto action_64
action_248 (70) = happyGoto action_65
action_248 (71) = happyGoto action_66
action_248 (85) = happyGoto action_67
action_248 (86) = happyGoto action_68
action_248 (87) = happyGoto action_69
action_248 (99) = happyGoto action_328
action_248 (104) = happyGoto action_70
action_248 (107) = happyGoto action_143
action_248 (108) = happyGoto action_100
action_248 (109) = happyGoto action_101
action_248 (110) = happyGoto action_71
action_248 (111) = happyGoto action_72
action_248 (112) = happyGoto action_73
action_248 (113) = happyGoto action_74
action_248 (114) = happyGoto action_75
action_248 (115) = happyGoto action_76
action_248 (116) = happyGoto action_115
action_248 (117) = happyGoto action_103
action_248 (118) = happyGoto action_99
action_248 (119) = happyGoto action_78
action_248 _ = happyReduce_141

action_249 (150) = happyShift action_191
action_249 (163) = happyShift action_258
action_249 (76) = happyGoto action_327
action_249 _ = happyFail (happyExpListPerState 249)

action_250 (174) = happyShift action_326
action_250 _ = happyFail (happyExpListPerState 250)

action_251 (134) = happyShift action_324
action_251 (158) = happyShift action_325
action_251 _ = happyFail (happyExpListPerState 251)

action_252 (163) = happyShift action_258
action_252 _ = happyReduce_130

action_253 (163) = happyShift action_258
action_253 (172) = happyShift action_323
action_253 _ = happyFail (happyExpListPerState 253)

action_254 _ = happyReduce_132

action_255 (163) = happyShift action_258
action_255 (172) = happyShift action_322
action_255 _ = happyFail (happyExpListPerState 255)

action_256 _ = happyReduce_136

action_257 _ = happyReduce_137

action_258 (120) = happyShift action_79
action_258 (122) = happyShift action_80
action_258 (123) = happyShift action_59
action_258 (125) = happyShift action_81
action_258 (128) = happyShift action_82
action_258 (154) = happyShift action_83
action_258 (161) = happyShift action_84
action_258 (162) = happyShift action_104
action_258 (164) = happyShift action_85
action_258 (165) = happyShift action_86
action_258 (166) = happyShift action_87
action_258 (167) = happyShift action_88
action_258 (173) = happyShift action_89
action_258 (178) = happyShift action_90
action_258 (179) = happyShift action_91
action_258 (180) = happyShift action_92
action_258 (181) = happyShift action_93
action_258 (185) = happyShift action_57
action_258 (186) = happyShift action_94
action_258 (187) = happyShift action_95
action_258 (188) = happyShift action_96
action_258 (189) = happyShift action_97
action_258 (59) = happyGoto action_60
action_258 (60) = happyGoto action_61
action_258 (61) = happyGoto action_62
action_258 (62) = happyGoto action_63
action_258 (63) = happyGoto action_64
action_258 (70) = happyGoto action_65
action_258 (71) = happyGoto action_66
action_258 (85) = happyGoto action_67
action_258 (86) = happyGoto action_68
action_258 (87) = happyGoto action_69
action_258 (104) = happyGoto action_70
action_258 (108) = happyGoto action_100
action_258 (109) = happyGoto action_101
action_258 (110) = happyGoto action_71
action_258 (111) = happyGoto action_72
action_258 (112) = happyGoto action_73
action_258 (113) = happyGoto action_74
action_258 (114) = happyGoto action_75
action_258 (115) = happyGoto action_76
action_258 (116) = happyGoto action_321
action_258 (117) = happyGoto action_103
action_258 (118) = happyGoto action_99
action_258 (119) = happyGoto action_78
action_258 _ = happyFail (happyExpListPerState 258)

action_259 (120) = happyShift action_79
action_259 (122) = happyShift action_80
action_259 (123) = happyShift action_59
action_259 (125) = happyShift action_81
action_259 (128) = happyShift action_82
action_259 (154) = happyShift action_83
action_259 (161) = happyShift action_84
action_259 (162) = happyShift action_104
action_259 (164) = happyShift action_85
action_259 (165) = happyShift action_86
action_259 (166) = happyShift action_87
action_259 (167) = happyShift action_88
action_259 (173) = happyShift action_89
action_259 (178) = happyShift action_90
action_259 (179) = happyShift action_91
action_259 (180) = happyShift action_92
action_259 (181) = happyShift action_93
action_259 (185) = happyShift action_57
action_259 (186) = happyShift action_94
action_259 (187) = happyShift action_95
action_259 (188) = happyShift action_96
action_259 (189) = happyShift action_97
action_259 (59) = happyGoto action_60
action_259 (60) = happyGoto action_61
action_259 (61) = happyGoto action_62
action_259 (62) = happyGoto action_63
action_259 (63) = happyGoto action_64
action_259 (70) = happyGoto action_65
action_259 (71) = happyGoto action_66
action_259 (85) = happyGoto action_67
action_259 (86) = happyGoto action_68
action_259 (87) = happyGoto action_69
action_259 (99) = happyGoto action_320
action_259 (104) = happyGoto action_70
action_259 (107) = happyGoto action_143
action_259 (108) = happyGoto action_100
action_259 (109) = happyGoto action_101
action_259 (110) = happyGoto action_71
action_259 (111) = happyGoto action_72
action_259 (112) = happyGoto action_73
action_259 (113) = happyGoto action_74
action_259 (114) = happyGoto action_75
action_259 (115) = happyGoto action_76
action_259 (116) = happyGoto action_115
action_259 (117) = happyGoto action_103
action_259 (118) = happyGoto action_99
action_259 (119) = happyGoto action_78
action_259 _ = happyReduce_141

action_260 (189) = happyShift action_97
action_260 (63) = happyGoto action_319
action_260 _ = happyFail (happyExpListPerState 260)

action_261 (125) = happyShift action_81
action_261 (189) = happyShift action_97
action_261 (63) = happyGoto action_105
action_261 (104) = happyGoto action_318
action_261 _ = happyFail (happyExpListPerState 261)

action_262 (138) = happyReduce_149
action_262 (139) = happyReduce_149
action_262 (140) = happyReduce_149
action_262 (141) = happyReduce_149
action_262 (142) = happyReduce_149
action_262 (143) = happyReduce_149
action_262 (149) = happyShift action_122
action_262 (160) = happyShift action_123
action_262 (168) = happyShift action_124
action_262 (170) = happyShift action_125
action_262 (175) = happyShift action_126
action_262 (176) = happyShift action_127
action_262 (101) = happyGoto action_128
action_262 (102) = happyGoto action_317
action_262 (103) = happyGoto action_130
action_262 _ = happyReduce_146

action_263 _ = happyReduce_160

action_264 (145) = happyShift action_316
action_264 (163) = happyShift action_258
action_264 _ = happyFail (happyExpListPerState 264)

action_265 (120) = happyShift action_79
action_265 (122) = happyShift action_80
action_265 (123) = happyShift action_59
action_265 (125) = happyShift action_81
action_265 (128) = happyShift action_82
action_265 (154) = happyShift action_83
action_265 (161) = happyShift action_84
action_265 (162) = happyShift action_104
action_265 (164) = happyShift action_85
action_265 (165) = happyShift action_86
action_265 (166) = happyShift action_87
action_265 (167) = happyShift action_88
action_265 (173) = happyShift action_89
action_265 (178) = happyShift action_90
action_265 (179) = happyShift action_91
action_265 (180) = happyShift action_92
action_265 (181) = happyShift action_93
action_265 (185) = happyShift action_57
action_265 (186) = happyShift action_94
action_265 (187) = happyShift action_95
action_265 (188) = happyShift action_96
action_265 (189) = happyShift action_97
action_265 (59) = happyGoto action_60
action_265 (60) = happyGoto action_61
action_265 (61) = happyGoto action_62
action_265 (62) = happyGoto action_63
action_265 (63) = happyGoto action_64
action_265 (70) = happyGoto action_65
action_265 (71) = happyGoto action_66
action_265 (85) = happyGoto action_67
action_265 (86) = happyGoto action_68
action_265 (87) = happyGoto action_69
action_265 (104) = happyGoto action_70
action_265 (108) = happyGoto action_315
action_265 (109) = happyGoto action_101
action_265 (110) = happyGoto action_71
action_265 (111) = happyGoto action_72
action_265 (112) = happyGoto action_73
action_265 (113) = happyGoto action_74
action_265 (114) = happyGoto action_75
action_265 (115) = happyGoto action_76
action_265 (117) = happyGoto action_103
action_265 (118) = happyGoto action_99
action_265 (119) = happyGoto action_78
action_265 _ = happyFail (happyExpListPerState 265)

action_266 (120) = happyShift action_79
action_266 (122) = happyShift action_80
action_266 (123) = happyShift action_59
action_266 (125) = happyShift action_81
action_266 (128) = happyShift action_82
action_266 (154) = happyShift action_83
action_266 (161) = happyShift action_84
action_266 (164) = happyShift action_85
action_266 (165) = happyShift action_86
action_266 (166) = happyShift action_87
action_266 (167) = happyShift action_88
action_266 (173) = happyShift action_89
action_266 (178) = happyShift action_90
action_266 (179) = happyShift action_91
action_266 (180) = happyShift action_92
action_266 (181) = happyShift action_93
action_266 (185) = happyShift action_57
action_266 (186) = happyShift action_94
action_266 (187) = happyShift action_95
action_266 (188) = happyShift action_96
action_266 (189) = happyShift action_97
action_266 (59) = happyGoto action_60
action_266 (60) = happyGoto action_61
action_266 (61) = happyGoto action_62
action_266 (62) = happyGoto action_63
action_266 (63) = happyGoto action_64
action_266 (70) = happyGoto action_65
action_266 (71) = happyGoto action_66
action_266 (85) = happyGoto action_67
action_266 (86) = happyGoto action_68
action_266 (87) = happyGoto action_69
action_266 (104) = happyGoto action_70
action_266 (110) = happyGoto action_71
action_266 (111) = happyGoto action_72
action_266 (112) = happyGoto action_73
action_266 (113) = happyGoto action_74
action_266 (114) = happyGoto action_75
action_266 (115) = happyGoto action_76
action_266 (118) = happyGoto action_314
action_266 (119) = happyGoto action_78
action_266 _ = happyFail (happyExpListPerState 266)

action_267 (120) = happyShift action_79
action_267 (122) = happyShift action_80
action_267 (123) = happyShift action_59
action_267 (125) = happyShift action_81
action_267 (128) = happyShift action_82
action_267 (154) = happyShift action_83
action_267 (161) = happyShift action_84
action_267 (164) = happyShift action_85
action_267 (165) = happyShift action_86
action_267 (166) = happyShift action_87
action_267 (167) = happyShift action_88
action_267 (173) = happyShift action_89
action_267 (178) = happyShift action_90
action_267 (179) = happyShift action_91
action_267 (180) = happyShift action_92
action_267 (181) = happyShift action_93
action_267 (185) = happyShift action_57
action_267 (186) = happyShift action_94
action_267 (187) = happyShift action_95
action_267 (188) = happyShift action_96
action_267 (189) = happyShift action_97
action_267 (59) = happyGoto action_60
action_267 (60) = happyGoto action_61
action_267 (61) = happyGoto action_62
action_267 (62) = happyGoto action_63
action_267 (63) = happyGoto action_64
action_267 (70) = happyGoto action_65
action_267 (71) = happyGoto action_66
action_267 (85) = happyGoto action_67
action_267 (86) = happyGoto action_68
action_267 (87) = happyGoto action_69
action_267 (104) = happyGoto action_70
action_267 (110) = happyGoto action_71
action_267 (111) = happyGoto action_72
action_267 (112) = happyGoto action_73
action_267 (113) = happyGoto action_74
action_267 (114) = happyGoto action_75
action_267 (115) = happyGoto action_76
action_267 (118) = happyGoto action_313
action_267 (119) = happyGoto action_78
action_267 _ = happyFail (happyExpListPerState 267)

action_268 (120) = happyShift action_79
action_268 (122) = happyShift action_80
action_268 (123) = happyShift action_59
action_268 (125) = happyShift action_81
action_268 (128) = happyShift action_82
action_268 (154) = happyShift action_83
action_268 (161) = happyShift action_84
action_268 (164) = happyShift action_85
action_268 (165) = happyShift action_86
action_268 (166) = happyShift action_87
action_268 (167) = happyShift action_88
action_268 (173) = happyShift action_89
action_268 (178) = happyShift action_90
action_268 (179) = happyShift action_91
action_268 (180) = happyShift action_92
action_268 (181) = happyShift action_93
action_268 (185) = happyShift action_57
action_268 (186) = happyShift action_94
action_268 (187) = happyShift action_95
action_268 (188) = happyShift action_96
action_268 (189) = happyShift action_97
action_268 (59) = happyGoto action_60
action_268 (60) = happyGoto action_61
action_268 (61) = happyGoto action_62
action_268 (62) = happyGoto action_63
action_268 (63) = happyGoto action_64
action_268 (70) = happyGoto action_65
action_268 (71) = happyGoto action_66
action_268 (85) = happyGoto action_67
action_268 (86) = happyGoto action_68
action_268 (87) = happyGoto action_69
action_268 (104) = happyGoto action_70
action_268 (110) = happyGoto action_71
action_268 (111) = happyGoto action_72
action_268 (112) = happyGoto action_73
action_268 (113) = happyGoto action_74
action_268 (114) = happyGoto action_75
action_268 (115) = happyGoto action_76
action_268 (118) = happyGoto action_312
action_268 (119) = happyGoto action_78
action_268 _ = happyFail (happyExpListPerState 268)

action_269 (120) = happyShift action_79
action_269 (122) = happyShift action_80
action_269 (123) = happyShift action_59
action_269 (125) = happyShift action_81
action_269 (128) = happyShift action_82
action_269 (154) = happyShift action_83
action_269 (161) = happyShift action_84
action_269 (164) = happyShift action_85
action_269 (165) = happyShift action_86
action_269 (166) = happyShift action_87
action_269 (167) = happyShift action_88
action_269 (173) = happyShift action_89
action_269 (178) = happyShift action_90
action_269 (179) = happyShift action_91
action_269 (180) = happyShift action_92
action_269 (181) = happyShift action_93
action_269 (185) = happyShift action_57
action_269 (186) = happyShift action_94
action_269 (187) = happyShift action_95
action_269 (188) = happyShift action_96
action_269 (189) = happyShift action_97
action_269 (59) = happyGoto action_60
action_269 (60) = happyGoto action_61
action_269 (61) = happyGoto action_62
action_269 (62) = happyGoto action_63
action_269 (63) = happyGoto action_64
action_269 (70) = happyGoto action_65
action_269 (71) = happyGoto action_66
action_269 (85) = happyGoto action_67
action_269 (86) = happyGoto action_68
action_269 (87) = happyGoto action_69
action_269 (104) = happyGoto action_70
action_269 (110) = happyGoto action_71
action_269 (111) = happyGoto action_72
action_269 (112) = happyGoto action_73
action_269 (113) = happyGoto action_74
action_269 (114) = happyGoto action_75
action_269 (115) = happyGoto action_76
action_269 (118) = happyGoto action_311
action_269 (119) = happyGoto action_78
action_269 _ = happyFail (happyExpListPerState 269)

action_270 (120) = happyShift action_79
action_270 (122) = happyShift action_80
action_270 (123) = happyShift action_59
action_270 (125) = happyShift action_81
action_270 (128) = happyShift action_82
action_270 (154) = happyShift action_83
action_270 (161) = happyShift action_84
action_270 (164) = happyShift action_85
action_270 (165) = happyShift action_86
action_270 (166) = happyShift action_87
action_270 (167) = happyShift action_88
action_270 (173) = happyShift action_89
action_270 (178) = happyShift action_90
action_270 (179) = happyShift action_91
action_270 (180) = happyShift action_92
action_270 (181) = happyShift action_93
action_270 (185) = happyShift action_57
action_270 (186) = happyShift action_94
action_270 (187) = happyShift action_95
action_270 (188) = happyShift action_96
action_270 (189) = happyShift action_97
action_270 (59) = happyGoto action_60
action_270 (60) = happyGoto action_61
action_270 (61) = happyGoto action_62
action_270 (62) = happyGoto action_63
action_270 (63) = happyGoto action_64
action_270 (70) = happyGoto action_65
action_270 (71) = happyGoto action_66
action_270 (85) = happyGoto action_67
action_270 (86) = happyGoto action_68
action_270 (87) = happyGoto action_69
action_270 (104) = happyGoto action_70
action_270 (110) = happyGoto action_71
action_270 (111) = happyGoto action_72
action_270 (112) = happyGoto action_73
action_270 (113) = happyGoto action_74
action_270 (114) = happyGoto action_75
action_270 (115) = happyGoto action_76
action_270 (118) = happyGoto action_310
action_270 (119) = happyGoto action_78
action_270 _ = happyFail (happyExpListPerState 270)

action_271 (120) = happyShift action_79
action_271 (122) = happyShift action_80
action_271 (123) = happyShift action_59
action_271 (125) = happyShift action_81
action_271 (128) = happyShift action_82
action_271 (154) = happyShift action_83
action_271 (161) = happyShift action_84
action_271 (164) = happyShift action_85
action_271 (165) = happyShift action_86
action_271 (166) = happyShift action_87
action_271 (167) = happyShift action_88
action_271 (173) = happyShift action_89
action_271 (178) = happyShift action_90
action_271 (179) = happyShift action_91
action_271 (180) = happyShift action_92
action_271 (181) = happyShift action_93
action_271 (185) = happyShift action_57
action_271 (186) = happyShift action_94
action_271 (187) = happyShift action_95
action_271 (188) = happyShift action_96
action_271 (189) = happyShift action_97
action_271 (59) = happyGoto action_60
action_271 (60) = happyGoto action_61
action_271 (61) = happyGoto action_62
action_271 (62) = happyGoto action_63
action_271 (63) = happyGoto action_64
action_271 (70) = happyGoto action_65
action_271 (71) = happyGoto action_66
action_271 (85) = happyGoto action_67
action_271 (86) = happyGoto action_68
action_271 (87) = happyGoto action_69
action_271 (104) = happyGoto action_70
action_271 (110) = happyGoto action_71
action_271 (111) = happyGoto action_72
action_271 (112) = happyGoto action_73
action_271 (113) = happyGoto action_74
action_271 (114) = happyGoto action_75
action_271 (115) = happyGoto action_76
action_271 (118) = happyGoto action_309
action_271 (119) = happyGoto action_78
action_271 _ = happyFail (happyExpListPerState 271)

action_272 (120) = happyShift action_79
action_272 (122) = happyShift action_80
action_272 (123) = happyShift action_59
action_272 (125) = happyShift action_81
action_272 (128) = happyShift action_82
action_272 (154) = happyShift action_83
action_272 (161) = happyShift action_84
action_272 (164) = happyShift action_85
action_272 (165) = happyShift action_86
action_272 (166) = happyShift action_87
action_272 (167) = happyShift action_88
action_272 (173) = happyShift action_89
action_272 (178) = happyShift action_90
action_272 (179) = happyShift action_91
action_272 (180) = happyShift action_92
action_272 (181) = happyShift action_93
action_272 (185) = happyShift action_57
action_272 (186) = happyShift action_94
action_272 (187) = happyShift action_95
action_272 (188) = happyShift action_96
action_272 (189) = happyShift action_97
action_272 (59) = happyGoto action_60
action_272 (60) = happyGoto action_61
action_272 (61) = happyGoto action_62
action_272 (62) = happyGoto action_63
action_272 (63) = happyGoto action_64
action_272 (70) = happyGoto action_65
action_272 (71) = happyGoto action_66
action_272 (85) = happyGoto action_67
action_272 (86) = happyGoto action_68
action_272 (87) = happyGoto action_69
action_272 (104) = happyGoto action_70
action_272 (111) = happyGoto action_308
action_272 (112) = happyGoto action_73
action_272 (113) = happyGoto action_74
action_272 (114) = happyGoto action_75
action_272 (115) = happyGoto action_76
action_272 (119) = happyGoto action_78
action_272 _ = happyFail (happyExpListPerState 272)

action_273 (120) = happyShift action_79
action_273 (122) = happyShift action_80
action_273 (123) = happyShift action_59
action_273 (125) = happyShift action_81
action_273 (128) = happyShift action_82
action_273 (154) = happyShift action_83
action_273 (161) = happyShift action_84
action_273 (164) = happyShift action_85
action_273 (165) = happyShift action_86
action_273 (166) = happyShift action_87
action_273 (167) = happyShift action_88
action_273 (173) = happyShift action_89
action_273 (178) = happyShift action_90
action_273 (179) = happyShift action_91
action_273 (180) = happyShift action_92
action_273 (181) = happyShift action_93
action_273 (185) = happyShift action_57
action_273 (186) = happyShift action_94
action_273 (187) = happyShift action_95
action_273 (188) = happyShift action_96
action_273 (189) = happyShift action_97
action_273 (59) = happyGoto action_60
action_273 (60) = happyGoto action_61
action_273 (61) = happyGoto action_62
action_273 (62) = happyGoto action_63
action_273 (63) = happyGoto action_64
action_273 (70) = happyGoto action_65
action_273 (71) = happyGoto action_66
action_273 (85) = happyGoto action_67
action_273 (86) = happyGoto action_68
action_273 (87) = happyGoto action_69
action_273 (104) = happyGoto action_70
action_273 (111) = happyGoto action_307
action_273 (112) = happyGoto action_73
action_273 (113) = happyGoto action_74
action_273 (114) = happyGoto action_75
action_273 (115) = happyGoto action_76
action_273 (119) = happyGoto action_78
action_273 _ = happyFail (happyExpListPerState 273)

action_274 (120) = happyShift action_79
action_274 (122) = happyShift action_80
action_274 (123) = happyShift action_59
action_274 (125) = happyShift action_81
action_274 (128) = happyShift action_82
action_274 (154) = happyShift action_83
action_274 (161) = happyShift action_84
action_274 (164) = happyShift action_85
action_274 (165) = happyShift action_86
action_274 (166) = happyShift action_87
action_274 (167) = happyShift action_88
action_274 (173) = happyShift action_89
action_274 (178) = happyShift action_90
action_274 (179) = happyShift action_91
action_274 (180) = happyShift action_92
action_274 (181) = happyShift action_93
action_274 (185) = happyShift action_57
action_274 (186) = happyShift action_94
action_274 (187) = happyShift action_95
action_274 (188) = happyShift action_96
action_274 (189) = happyShift action_97
action_274 (59) = happyGoto action_60
action_274 (60) = happyGoto action_61
action_274 (61) = happyGoto action_62
action_274 (62) = happyGoto action_63
action_274 (63) = happyGoto action_64
action_274 (70) = happyGoto action_65
action_274 (71) = happyGoto action_66
action_274 (85) = happyGoto action_67
action_274 (86) = happyGoto action_68
action_274 (87) = happyGoto action_69
action_274 (104) = happyGoto action_70
action_274 (112) = happyGoto action_306
action_274 (113) = happyGoto action_74
action_274 (114) = happyGoto action_75
action_274 (115) = happyGoto action_76
action_274 (119) = happyGoto action_78
action_274 _ = happyFail (happyExpListPerState 274)

action_275 (120) = happyShift action_79
action_275 (122) = happyShift action_80
action_275 (123) = happyShift action_59
action_275 (125) = happyShift action_81
action_275 (128) = happyShift action_82
action_275 (154) = happyShift action_83
action_275 (161) = happyShift action_84
action_275 (164) = happyShift action_85
action_275 (165) = happyShift action_86
action_275 (166) = happyShift action_87
action_275 (167) = happyShift action_88
action_275 (173) = happyShift action_89
action_275 (178) = happyShift action_90
action_275 (179) = happyShift action_91
action_275 (180) = happyShift action_92
action_275 (181) = happyShift action_93
action_275 (185) = happyShift action_57
action_275 (186) = happyShift action_94
action_275 (187) = happyShift action_95
action_275 (188) = happyShift action_96
action_275 (189) = happyShift action_97
action_275 (59) = happyGoto action_60
action_275 (60) = happyGoto action_61
action_275 (61) = happyGoto action_62
action_275 (62) = happyGoto action_63
action_275 (63) = happyGoto action_64
action_275 (70) = happyGoto action_65
action_275 (71) = happyGoto action_66
action_275 (85) = happyGoto action_67
action_275 (86) = happyGoto action_68
action_275 (87) = happyGoto action_69
action_275 (104) = happyGoto action_70
action_275 (112) = happyGoto action_305
action_275 (113) = happyGoto action_74
action_275 (114) = happyGoto action_75
action_275 (115) = happyGoto action_76
action_275 (119) = happyGoto action_78
action_275 _ = happyFail (happyExpListPerState 275)

action_276 (120) = happyShift action_79
action_276 (122) = happyShift action_80
action_276 (123) = happyShift action_59
action_276 (125) = happyShift action_81
action_276 (128) = happyShift action_82
action_276 (154) = happyShift action_83
action_276 (161) = happyShift action_84
action_276 (164) = happyShift action_85
action_276 (165) = happyShift action_86
action_276 (166) = happyShift action_87
action_276 (167) = happyShift action_88
action_276 (173) = happyShift action_89
action_276 (178) = happyShift action_90
action_276 (179) = happyShift action_91
action_276 (180) = happyShift action_92
action_276 (181) = happyShift action_93
action_276 (185) = happyShift action_57
action_276 (186) = happyShift action_94
action_276 (187) = happyShift action_95
action_276 (188) = happyShift action_96
action_276 (189) = happyShift action_97
action_276 (59) = happyGoto action_60
action_276 (60) = happyGoto action_61
action_276 (61) = happyGoto action_62
action_276 (62) = happyGoto action_63
action_276 (63) = happyGoto action_64
action_276 (70) = happyGoto action_65
action_276 (71) = happyGoto action_66
action_276 (85) = happyGoto action_67
action_276 (86) = happyGoto action_68
action_276 (87) = happyGoto action_69
action_276 (104) = happyGoto action_70
action_276 (112) = happyGoto action_304
action_276 (113) = happyGoto action_74
action_276 (114) = happyGoto action_75
action_276 (115) = happyGoto action_76
action_276 (119) = happyGoto action_78
action_276 _ = happyFail (happyExpListPerState 276)

action_277 (122) = happyShift action_80
action_277 (123) = happyShift action_59
action_277 (125) = happyShift action_81
action_277 (154) = happyShift action_83
action_277 (161) = happyShift action_84
action_277 (173) = happyShift action_89
action_277 (185) = happyShift action_57
action_277 (186) = happyShift action_94
action_277 (187) = happyShift action_95
action_277 (188) = happyShift action_96
action_277 (189) = happyShift action_97
action_277 (59) = happyGoto action_60
action_277 (60) = happyGoto action_61
action_277 (61) = happyGoto action_62
action_277 (62) = happyGoto action_63
action_277 (63) = happyGoto action_105
action_277 (70) = happyGoto action_65
action_277 (71) = happyGoto action_66
action_277 (104) = happyGoto action_70
action_277 (115) = happyGoto action_303
action_277 (119) = happyGoto action_78
action_277 _ = happyFail (happyExpListPerState 277)

action_278 _ = happyReduce_158

action_279 (132) = happyShift action_266
action_279 (133) = happyShift action_267
action_279 (135) = happyShift action_268
action_279 (136) = happyShift action_269
action_279 (137) = happyShift action_270
action_279 (184) = happyShift action_271
action_279 _ = happyReduce_165

action_280 (120) = happyShift action_79
action_280 (122) = happyShift action_80
action_280 (123) = happyShift action_59
action_280 (125) = happyShift action_81
action_280 (128) = happyShift action_82
action_280 (154) = happyShift action_83
action_280 (161) = happyShift action_84
action_280 (162) = happyShift action_104
action_280 (164) = happyShift action_85
action_280 (165) = happyShift action_86
action_280 (166) = happyShift action_87
action_280 (167) = happyShift action_88
action_280 (173) = happyShift action_89
action_280 (178) = happyShift action_90
action_280 (179) = happyShift action_91
action_280 (180) = happyShift action_92
action_280 (181) = happyShift action_93
action_280 (185) = happyShift action_57
action_280 (186) = happyShift action_94
action_280 (187) = happyShift action_95
action_280 (188) = happyShift action_96
action_280 (189) = happyShift action_97
action_280 (59) = happyGoto action_60
action_280 (60) = happyGoto action_61
action_280 (61) = happyGoto action_62
action_280 (62) = happyGoto action_63
action_280 (63) = happyGoto action_64
action_280 (70) = happyGoto action_65
action_280 (71) = happyGoto action_66
action_280 (85) = happyGoto action_67
action_280 (86) = happyGoto action_68
action_280 (87) = happyGoto action_69
action_280 (104) = happyGoto action_70
action_280 (107) = happyGoto action_302
action_280 (108) = happyGoto action_100
action_280 (109) = happyGoto action_101
action_280 (110) = happyGoto action_71
action_280 (111) = happyGoto action_72
action_280 (112) = happyGoto action_73
action_280 (113) = happyGoto action_74
action_280 (114) = happyGoto action_75
action_280 (115) = happyGoto action_76
action_280 (116) = happyGoto action_115
action_280 (117) = happyGoto action_103
action_280 (118) = happyGoto action_99
action_280 (119) = happyGoto action_78
action_280 _ = happyFail (happyExpListPerState 280)

action_281 (120) = happyShift action_79
action_281 (122) = happyShift action_80
action_281 (123) = happyShift action_59
action_281 (125) = happyShift action_81
action_281 (128) = happyShift action_82
action_281 (154) = happyShift action_83
action_281 (161) = happyShift action_84
action_281 (162) = happyShift action_104
action_281 (164) = happyShift action_85
action_281 (165) = happyShift action_86
action_281 (166) = happyShift action_87
action_281 (167) = happyShift action_88
action_281 (173) = happyShift action_89
action_281 (178) = happyShift action_90
action_281 (179) = happyShift action_91
action_281 (180) = happyShift action_92
action_281 (181) = happyShift action_93
action_281 (185) = happyShift action_57
action_281 (186) = happyShift action_94
action_281 (187) = happyShift action_95
action_281 (188) = happyShift action_96
action_281 (189) = happyShift action_97
action_281 (59) = happyGoto action_60
action_281 (60) = happyGoto action_61
action_281 (61) = happyGoto action_62
action_281 (62) = happyGoto action_63
action_281 (63) = happyGoto action_64
action_281 (70) = happyGoto action_65
action_281 (71) = happyGoto action_66
action_281 (85) = happyGoto action_67
action_281 (86) = happyGoto action_68
action_281 (87) = happyGoto action_69
action_281 (104) = happyGoto action_70
action_281 (107) = happyGoto action_301
action_281 (108) = happyGoto action_100
action_281 (109) = happyGoto action_101
action_281 (110) = happyGoto action_71
action_281 (111) = happyGoto action_72
action_281 (112) = happyGoto action_73
action_281 (113) = happyGoto action_74
action_281 (114) = happyGoto action_75
action_281 (115) = happyGoto action_76
action_281 (116) = happyGoto action_115
action_281 (117) = happyGoto action_103
action_281 (118) = happyGoto action_99
action_281 (119) = happyGoto action_78
action_281 _ = happyFail (happyExpListPerState 281)

action_282 (120) = happyShift action_79
action_282 (122) = happyShift action_80
action_282 (123) = happyShift action_59
action_282 (125) = happyShift action_81
action_282 (128) = happyShift action_82
action_282 (154) = happyShift action_83
action_282 (161) = happyShift action_84
action_282 (162) = happyShift action_104
action_282 (164) = happyShift action_85
action_282 (165) = happyShift action_86
action_282 (166) = happyShift action_87
action_282 (167) = happyShift action_88
action_282 (173) = happyShift action_89
action_282 (178) = happyShift action_90
action_282 (179) = happyShift action_91
action_282 (180) = happyShift action_92
action_282 (181) = happyShift action_93
action_282 (185) = happyShift action_57
action_282 (186) = happyShift action_94
action_282 (187) = happyShift action_95
action_282 (188) = happyShift action_96
action_282 (189) = happyShift action_97
action_282 (59) = happyGoto action_60
action_282 (60) = happyGoto action_61
action_282 (61) = happyGoto action_62
action_282 (62) = happyGoto action_63
action_282 (63) = happyGoto action_64
action_282 (70) = happyGoto action_65
action_282 (71) = happyGoto action_66
action_282 (85) = happyGoto action_67
action_282 (86) = happyGoto action_68
action_282 (87) = happyGoto action_69
action_282 (104) = happyGoto action_70
action_282 (107) = happyGoto action_300
action_282 (108) = happyGoto action_100
action_282 (109) = happyGoto action_101
action_282 (110) = happyGoto action_71
action_282 (111) = happyGoto action_72
action_282 (112) = happyGoto action_73
action_282 (113) = happyGoto action_74
action_282 (114) = happyGoto action_75
action_282 (115) = happyGoto action_76
action_282 (116) = happyGoto action_115
action_282 (117) = happyGoto action_103
action_282 (118) = happyGoto action_99
action_282 (119) = happyGoto action_78
action_282 _ = happyFail (happyExpListPerState 282)

action_283 (120) = happyShift action_79
action_283 (122) = happyShift action_80
action_283 (123) = happyShift action_59
action_283 (125) = happyShift action_81
action_283 (128) = happyShift action_82
action_283 (154) = happyShift action_83
action_283 (161) = happyShift action_84
action_283 (162) = happyShift action_104
action_283 (164) = happyShift action_85
action_283 (165) = happyShift action_86
action_283 (166) = happyShift action_87
action_283 (167) = happyShift action_88
action_283 (173) = happyShift action_89
action_283 (178) = happyShift action_90
action_283 (179) = happyShift action_91
action_283 (180) = happyShift action_92
action_283 (181) = happyShift action_93
action_283 (185) = happyShift action_57
action_283 (186) = happyShift action_94
action_283 (187) = happyShift action_95
action_283 (188) = happyShift action_96
action_283 (189) = happyShift action_97
action_283 (59) = happyGoto action_60
action_283 (60) = happyGoto action_61
action_283 (61) = happyGoto action_62
action_283 (62) = happyGoto action_63
action_283 (63) = happyGoto action_64
action_283 (70) = happyGoto action_65
action_283 (71) = happyGoto action_66
action_283 (85) = happyGoto action_67
action_283 (86) = happyGoto action_68
action_283 (87) = happyGoto action_69
action_283 (104) = happyGoto action_70
action_283 (107) = happyGoto action_299
action_283 (108) = happyGoto action_100
action_283 (109) = happyGoto action_101
action_283 (110) = happyGoto action_71
action_283 (111) = happyGoto action_72
action_283 (112) = happyGoto action_73
action_283 (113) = happyGoto action_74
action_283 (114) = happyGoto action_75
action_283 (115) = happyGoto action_76
action_283 (116) = happyGoto action_115
action_283 (117) = happyGoto action_103
action_283 (118) = happyGoto action_99
action_283 (119) = happyGoto action_78
action_283 _ = happyFail (happyExpListPerState 283)

action_284 (124) = happyShift action_298
action_284 _ = happyFail (happyExpListPerState 284)

action_285 (124) = happyShift action_297
action_285 _ = happyFail (happyExpListPerState 285)

action_286 (124) = happyShift action_296
action_286 _ = happyFail (happyExpListPerState 286)

action_287 (124) = happyShift action_295
action_287 _ = happyFail (happyExpListPerState 287)

action_288 (129) = happyShift action_277
action_288 _ = happyReduce_183

action_289 _ = happyReduce_191

action_290 _ = happyReduce_187

action_291 (120) = happyShift action_79
action_291 (122) = happyShift action_80
action_291 (123) = happyShift action_59
action_291 (125) = happyShift action_81
action_291 (128) = happyShift action_82
action_291 (154) = happyShift action_83
action_291 (161) = happyShift action_84
action_291 (164) = happyShift action_85
action_291 (165) = happyShift action_86
action_291 (166) = happyShift action_87
action_291 (167) = happyShift action_88
action_291 (173) = happyShift action_89
action_291 (178) = happyShift action_90
action_291 (179) = happyShift action_91
action_291 (180) = happyShift action_92
action_291 (181) = happyShift action_93
action_291 (185) = happyShift action_57
action_291 (186) = happyShift action_94
action_291 (187) = happyShift action_95
action_291 (188) = happyShift action_96
action_291 (189) = happyShift action_97
action_291 (59) = happyGoto action_60
action_291 (60) = happyGoto action_61
action_291 (61) = happyGoto action_62
action_291 (62) = happyGoto action_63
action_291 (63) = happyGoto action_64
action_291 (70) = happyGoto action_65
action_291 (71) = happyGoto action_66
action_291 (85) = happyGoto action_67
action_291 (86) = happyGoto action_68
action_291 (87) = happyGoto action_69
action_291 (104) = happyGoto action_70
action_291 (112) = happyGoto action_294
action_291 (113) = happyGoto action_74
action_291 (114) = happyGoto action_75
action_291 (115) = happyGoto action_76
action_291 (119) = happyGoto action_78
action_291 _ = happyFail (happyExpListPerState 291)

action_292 (124) = happyShift action_293
action_292 (163) = happyShift action_258
action_292 _ = happyFail (happyExpListPerState 292)

action_293 _ = happyReduce_201

action_294 _ = happyReduce_181

action_295 _ = happyReduce_123

action_296 _ = happyReduce_122

action_297 _ = happyReduce_121

action_298 _ = happyReduce_124

action_299 (124) = happyShift action_346
action_299 (163) = happyShift action_258
action_299 _ = happyFail (happyExpListPerState 299)

action_300 (124) = happyShift action_345
action_300 (163) = happyShift action_258
action_300 _ = happyFail (happyExpListPerState 300)

action_301 (124) = happyShift action_344
action_301 (163) = happyShift action_258
action_301 _ = happyFail (happyExpListPerState 301)

action_302 (124) = happyShift action_343
action_302 (163) = happyShift action_258
action_302 _ = happyFail (happyExpListPerState 302)

action_303 _ = happyReduce_186

action_304 _ = happyReduce_178

action_305 _ = happyReduce_177

action_306 _ = happyReduce_179

action_307 (121) = happyShift action_274
action_307 (125) = happyShift action_275
action_307 (130) = happyShift action_276
action_307 _ = happyReduce_175

action_308 (121) = happyShift action_274
action_308 (125) = happyShift action_275
action_308 (130) = happyShift action_276
action_308 _ = happyReduce_174

action_309 _ = happyReduce_168

action_310 _ = happyReduce_172

action_311 _ = happyReduce_171

action_312 _ = happyReduce_167

action_313 _ = happyReduce_170

action_314 _ = happyReduce_169

action_315 _ = happyReduce_163

action_316 _ = happyReduce_161

action_317 _ = happyReduce_148

action_318 _ = happyReduce_145

action_319 (123) = happyShift action_342
action_319 _ = happyFail (happyExpListPerState 319)

action_320 _ = happyReduce_143

action_321 _ = happyReduce_162

action_322 (67) = happyGoto action_341
action_322 (68) = happyGoto action_214
action_322 _ = happyReduce_67

action_323 (67) = happyGoto action_340
action_323 (68) = happyGoto action_214
action_323 _ = happyReduce_67

action_324 (120) = happyShift action_79
action_324 (122) = happyShift action_80
action_324 (123) = happyShift action_59
action_324 (125) = happyShift action_81
action_324 (128) = happyShift action_82
action_324 (154) = happyShift action_83
action_324 (161) = happyShift action_84
action_324 (162) = happyShift action_104
action_324 (164) = happyShift action_85
action_324 (165) = happyShift action_86
action_324 (166) = happyShift action_87
action_324 (167) = happyShift action_88
action_324 (173) = happyShift action_89
action_324 (178) = happyShift action_90
action_324 (179) = happyShift action_91
action_324 (180) = happyShift action_92
action_324 (181) = happyShift action_93
action_324 (185) = happyShift action_57
action_324 (186) = happyShift action_94
action_324 (187) = happyShift action_95
action_324 (188) = happyShift action_96
action_324 (189) = happyShift action_97
action_324 (59) = happyGoto action_60
action_324 (60) = happyGoto action_61
action_324 (61) = happyGoto action_62
action_324 (62) = happyGoto action_63
action_324 (63) = happyGoto action_64
action_324 (70) = happyGoto action_65
action_324 (71) = happyGoto action_66
action_324 (85) = happyGoto action_67
action_324 (86) = happyGoto action_68
action_324 (87) = happyGoto action_69
action_324 (104) = happyGoto action_70
action_324 (107) = happyGoto action_339
action_324 (108) = happyGoto action_100
action_324 (109) = happyGoto action_101
action_324 (110) = happyGoto action_71
action_324 (111) = happyGoto action_72
action_324 (112) = happyGoto action_73
action_324 (113) = happyGoto action_74
action_324 (114) = happyGoto action_75
action_324 (115) = happyGoto action_76
action_324 (116) = happyGoto action_115
action_324 (117) = happyGoto action_103
action_324 (118) = happyGoto action_99
action_324 (119) = happyGoto action_78
action_324 _ = happyFail (happyExpListPerState 324)

action_325 (189) = happyShift action_97
action_325 (63) = happyGoto action_338
action_325 _ = happyFail (happyExpListPerState 325)

action_326 (120) = happyShift action_79
action_326 (122) = happyShift action_80
action_326 (123) = happyShift action_59
action_326 (125) = happyShift action_81
action_326 (128) = happyShift action_82
action_326 (154) = happyShift action_83
action_326 (161) = happyShift action_84
action_326 (162) = happyShift action_104
action_326 (164) = happyShift action_85
action_326 (165) = happyShift action_86
action_326 (166) = happyShift action_87
action_326 (167) = happyShift action_88
action_326 (173) = happyShift action_89
action_326 (178) = happyShift action_90
action_326 (179) = happyShift action_91
action_326 (180) = happyShift action_92
action_326 (181) = happyShift action_93
action_326 (185) = happyShift action_57
action_326 (186) = happyShift action_94
action_326 (187) = happyShift action_95
action_326 (188) = happyShift action_96
action_326 (189) = happyShift action_97
action_326 (59) = happyGoto action_60
action_326 (60) = happyGoto action_61
action_326 (61) = happyGoto action_62
action_326 (62) = happyGoto action_63
action_326 (63) = happyGoto action_64
action_326 (70) = happyGoto action_65
action_326 (71) = happyGoto action_66
action_326 (85) = happyGoto action_67
action_326 (86) = happyGoto action_68
action_326 (87) = happyGoto action_69
action_326 (104) = happyGoto action_70
action_326 (107) = happyGoto action_337
action_326 (108) = happyGoto action_100
action_326 (109) = happyGoto action_101
action_326 (110) = happyGoto action_71
action_326 (111) = happyGoto action_72
action_326 (112) = happyGoto action_73
action_326 (113) = happyGoto action_74
action_326 (114) = happyGoto action_75
action_326 (115) = happyGoto action_76
action_326 (116) = happyGoto action_115
action_326 (117) = happyGoto action_103
action_326 (118) = happyGoto action_99
action_326 (119) = happyGoto action_78
action_326 _ = happyFail (happyExpListPerState 326)

action_327 _ = happyReduce_125

action_328 (124) = happyShift action_336
action_328 _ = happyFail (happyExpListPerState 328)

action_329 (163) = happyShift action_258
action_329 _ = happyReduce_113

action_330 _ = happyReduce_111

action_331 _ = happyReduce_100

action_332 _ = happyReduce_101

action_333 _ = happyReduce_109

action_334 _ = happyReduce_95

action_335 _ = happyReduce_96

action_336 _ = happyReduce_116

action_337 (163) = happyShift action_258
action_337 _ = happyReduce_126

action_338 (150) = happyShift action_191
action_338 (76) = happyGoto action_350
action_338 _ = happyFail (happyExpListPerState 338)

action_339 (127) = happyShift action_349
action_339 (163) = happyShift action_258
action_339 _ = happyFail (happyExpListPerState 339)

action_340 (95) = happyGoto action_348
action_340 _ = happyReduce_135

action_341 _ = happyReduce_134

action_342 (138) = happyReduce_149
action_342 (139) = happyReduce_149
action_342 (140) = happyReduce_149
action_342 (141) = happyReduce_149
action_342 (142) = happyReduce_149
action_342 (143) = happyReduce_149
action_342 (149) = happyShift action_122
action_342 (160) = happyShift action_123
action_342 (168) = happyShift action_124
action_342 (170) = happyShift action_125
action_342 (175) = happyShift action_126
action_342 (176) = happyShift action_127
action_342 (101) = happyGoto action_128
action_342 (102) = happyGoto action_347
action_342 (103) = happyGoto action_130
action_342 _ = happyReduce_146

action_343 _ = happyReduce_120

action_344 _ = happyReduce_117

action_345 _ = happyReduce_118

action_346 _ = happyReduce_119

action_347 (124) = happyShift action_353
action_347 _ = happyFail (happyExpListPerState 347)

action_348 (151) = happyShift action_154
action_348 (152) = happyShift action_152
action_348 (93) = happyGoto action_352
action_348 (94) = happyGoto action_256
action_348 _ = happyReduce_133

action_349 (120) = happyShift action_79
action_349 (122) = happyShift action_80
action_349 (123) = happyShift action_59
action_349 (125) = happyShift action_81
action_349 (128) = happyShift action_82
action_349 (154) = happyShift action_83
action_349 (161) = happyShift action_84
action_349 (162) = happyShift action_104
action_349 (164) = happyShift action_85
action_349 (165) = happyShift action_86
action_349 (166) = happyShift action_87
action_349 (167) = happyShift action_88
action_349 (173) = happyShift action_89
action_349 (178) = happyShift action_90
action_349 (179) = happyShift action_91
action_349 (180) = happyShift action_92
action_349 (181) = happyShift action_93
action_349 (185) = happyShift action_57
action_349 (186) = happyShift action_94
action_349 (187) = happyShift action_95
action_349 (188) = happyShift action_96
action_349 (189) = happyShift action_97
action_349 (59) = happyGoto action_60
action_349 (60) = happyGoto action_61
action_349 (61) = happyGoto action_62
action_349 (62) = happyGoto action_63
action_349 (63) = happyGoto action_64
action_349 (70) = happyGoto action_65
action_349 (71) = happyGoto action_66
action_349 (85) = happyGoto action_67
action_349 (86) = happyGoto action_68
action_349 (87) = happyGoto action_69
action_349 (104) = happyGoto action_70
action_349 (107) = happyGoto action_351
action_349 (108) = happyGoto action_100
action_349 (109) = happyGoto action_101
action_349 (110) = happyGoto action_71
action_349 (111) = happyGoto action_72
action_349 (112) = happyGoto action_73
action_349 (113) = happyGoto action_74
action_349 (114) = happyGoto action_75
action_349 (115) = happyGoto action_76
action_349 (116) = happyGoto action_115
action_349 (117) = happyGoto action_103
action_349 (118) = happyGoto action_99
action_349 (119) = happyGoto action_78
action_349 _ = happyFail (happyExpListPerState 349)

action_350 _ = happyReduce_128

action_351 (127) = happyShift action_158
action_351 (163) = happyShift action_258
action_351 (91) = happyGoto action_356
action_351 _ = happyReduce_129

action_352 (153) = happyShift action_355
action_352 _ = happyFail (happyExpListPerState 352)

action_353 (67) = happyGoto action_354
action_353 (68) = happyGoto action_214
action_353 _ = happyReduce_67

action_354 (153) = happyShift action_358
action_354 _ = happyFail (happyExpListPerState 354)

action_355 _ = happyReduce_131

action_356 (150) = happyShift action_191
action_356 (76) = happyGoto action_357
action_356 _ = happyFail (happyExpListPerState 356)

action_357 _ = happyReduce_127

action_358 _ = happyReduce_144

happyReduce_56 = happySpecReduce_1  59 happyReduction_56
happyReduction_56 (HappyTerminal (PT _ (TC happy_var_1)))
	 =  HappyAbsSyn59
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ addr = IntChar ((read happy_var_1 ) :: Char) , stateout = (statein happySelfAttrs) , tipo = BasicType_Char , vint = (read ( happy_var_1 )) :: Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  60 happyReduction_57
happyReduction_57 (HappyTerminal (PT _ (TD happy_var_1)))
	 =  HappyAbsSyn60
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (statein happySelfAttrs) , addr = FloatTac ((read happy_var_1 ) :: Double) , tipo = BasicType_Float , vdbl = (read ( happy_var_1 )) :: Double  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  61 happyReduction_58
happyReduction_58 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn61
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ addr = IntTac ((read happy_var_1 ) :: Int) , stateout = (statein happySelfAttrs) , tipo = BasicType_Int , vint = (read ( happy_var_1 )) :: Integer  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  62 happyReduction_59
happyReduction_59 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn62
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (statein happySelfAttrs) , addr = TempTac ((read happy_var_1 ) :: String) , tipo = BasicType_String , vstr = happy_var_1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  63 happyReduction_60
happyReduction_60 (HappyTerminal (PT _ (T_LIdent happy_var_1)))
	 =  HappyAbsSyn63
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (statein happySelfAttrs) , addr = NameTac (getString happy_var_1 ) (posn happySelfAttrs) , vlident = LIdent (getLIdentT happy_var_1 ) , posn = (tokenPosn happy_var_1 )  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  64 happyReduction_61
happyReduction_61 (HappyAbsSyn65  happy_var_1)
	 =  HappyAbsSyn64
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , res = Result (AbsAuL.Prog (parsetree happySubAttrs_1) ) (code happySelfAttrs) (envout happySubAttrs_1) (errs happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = emptyEnv , envin = emptyEnv , statein = (1,1)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  65 happyReduction_62
happyReduction_62 (HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn65
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_2  65 happyReduction_63
happyReduction_63 (HappyAbsSyn65  happy_var_2)
	(HappyAbsSyn66  happy_var_1)
	 =  HappyAbsSyn65
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) ++ (code happySubAttrs_2) , stateout = (stateout happySubAttrs_2) , errs = (errs happySubAttrs_1) ++ (errs happySubAttrs_2) , envout = (envout happySubAttrs_2) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envloc = (envout happySubAttrs_1) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_63 _ _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_1  66 happyReduction_64
happyReduction_64 (HappyAbsSyn75  happy_var_1)
	 =  HappyAbsSyn66
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.ProgGlobB (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  66 happyReduction_65
happyReduction_65 (HappyAbsSyn100  happy_var_1)
	 =  HappyAbsSyn66
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.ProgGlobF (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_65 _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  67 happyReduction_66
happyReduction_66 (HappyAbsSyn68  happy_var_1)
	 =  HappyAbsSyn67
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.Blk (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = emptyEnv , envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_66 _  = notHappyAtAll 

happyReduce_67 = happySpecReduce_0  68 happyReduction_67
happyReduction_67  =  HappyAbsSyn68
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (statein happySelfAttrs) , code = [] , errs = [] , envout = (envloc happySelfAttrs) , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_68 = happySpecReduce_2  68 happyReduction_68
happyReduction_68 (HappyAbsSyn75  happy_var_2)
	(HappyAbsSyn68  happy_var_1)
	 =  HappyAbsSyn68
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) ++ (code happySubAttrs_2) , stateout = (stateout happySubAttrs_2) , errs = (errs happySubAttrs_1) ++ (errs happySubAttrs_2) , envout = (envout happySubAttrs_2) , parsetree = flip (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envloc = (envout happySubAttrs_1) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_68 _ _  = notHappyAtAll 

happyReduce_69 = happySpecReduce_1  69 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_Bool  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_70 = happySpecReduce_1  69 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_Char  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_71 = happySpecReduce_1  69 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_Float  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_72 = happySpecReduce_1  69 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_Int  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_73 = happySpecReduce_1  69 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_String  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_74 = happySpecReduce_1  69 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn69
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.BasicType_Void  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_75 = happySpecReduce_1  70 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn70
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.Boolean_true  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_76 = happySpecReduce_1  70 happyReduction_76
happyReduction_76 _
	 =  HappyAbsSyn70
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.Boolean_false  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_77 = happySpecReduce_1  71 happyReduction_77
happyReduction_77 _
	 =  HappyAbsSyn71
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.PtrType  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_78 = happySpecReduce_1  72 happyReduction_78
happyReduction_78 (HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn72
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.CompTypeB (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_78 _  = notHappyAtAll 

happyReduce_79 = happySpecReduce_2  72 happyReduction_79
happyReduction_79 (HappyAbsSyn72  happy_var_2)
	_
	 =  HappyAbsSyn72
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.CompTypeP (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_79 _ _  = notHappyAtAll 

happyReduce_80 = happySpecReduce_2  72 happyReduction_80
happyReduction_80 (HappyAbsSyn74  happy_var_2)
	(HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn72
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.CompTypeA (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_80 _ _  = notHappyAtAll 

happyReduce_81 = happySpecReduce_2  73 happyReduction_81
happyReduction_81 _
	_
	 =  HappyAbsSyn73
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Brack  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_82 = happySpecReduce_1  74 happyReduction_82
happyReduction_82 (HappyAbsSyn73  happy_var_1)
	 =  HappyAbsSyn74
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:[]) (res happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_82 _  = notHappyAtAll 

happyReduce_83 = happySpecReduce_2  74 happyReduction_83
happyReduction_83 (HappyAbsSyn74  happy_var_2)
	(HappyAbsSyn73  happy_var_1)
	 =  HappyAbsSyn74
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = (:) (res happySubAttrs_1) (res happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_83 _ _  = notHappyAtAll 

happyReduce_84 = happySpecReduce_2  75 happyReduction_84
happyReduction_84 _
	(HappyAbsSyn77  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SDecl (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_84 _ _  = notHappyAtAll 

happyReduce_85 = happySpecReduce_2  75 happyReduction_85
happyReduction_85 _
	(HappyAbsSyn83  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SLocal (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_85 _ _  = notHappyAtAll 

happyReduce_86 = happySpecReduce_2  75 happyReduction_86
happyReduction_86 _
	(HappyAbsSyn84  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.SAss (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_86 _ _  = notHappyAtAll 

happyReduce_87 = happySpecReduce_1  75 happyReduction_87
happyReduction_87 (HappyAbsSyn88  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SWhile (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_87 _  = notHappyAtAll 

happyReduce_88 = happySpecReduce_2  75 happyReduction_88
happyReduction_88 _
	(HappyAbsSyn89  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envout happySubAttrs_1) , parsetree = AbsAuL.SRepeat (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_88 _ _  = notHappyAtAll 

happyReduce_89 = happySpecReduce_1  75 happyReduction_89
happyReduction_89 (HappyAbsSyn90  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.SFor (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_89 _  = notHappyAtAll 

happyReduce_90 = happySpecReduce_1  75 happyReduction_90
happyReduction_90 (HappyAbsSyn92  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , envout = (envout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.SIf (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_90 _  = notHappyAtAll 

happyReduce_91 = happySpecReduce_2  75 happyReduction_91
happyReduction_91 _
	(HappyAbsSyn85  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.SRExp (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_91 _ _  = notHappyAtAll 

happyReduce_92 = happySpecReduce_1  75 happyReduction_92
happyReduction_92 (HappyAbsSyn76  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.SEBlk (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_92 _  = notHappyAtAll 

happyReduce_93 = happySpecReduce_2  75 happyReduction_93
happyReduction_93 _
	(HappyAbsSyn96  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , parsetree = AbsAuL.SReturn (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_93 _ _  = notHappyAtAll 

happyReduce_94 = happySpecReduce_2  75 happyReduction_94
happyReduction_94 _
	(HappyAbsSyn98  happy_var_1)
	 =  HappyAbsSyn75
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , parsetree = AbsAuL.SBreak (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_94 _ _  = notHappyAtAll 

happyReduce_95 = happySpecReduce_3  76 happyReduction_95
happyReduction_95 _
	(HappyAbsSyn67  happy_var_2)
	_
	 =  HappyAbsSyn76
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , stateout = (stateout happySubAttrs_2) , errs = (errs happySubAttrs_2) , parsetree = AbsAuL.EBlkS (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_95 _ _ _  = notHappyAtAll 

happyReduce_96 = happySpecReduce_3  77 happyReduction_96
happyReduction_96 (HappyAbsSyn78  happy_var_3)
	(HappyAbsSyn104  happy_var_2)
	(HappyAbsSyn69  happy_var_1)
	 =  HappyAbsSyn77
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = if (parsetree happySubAttrs_3) ==AbsAuL.VarINil then [(Rules (VarDecl (toTACType (tipo happySelfAttrs) ) (addr happySubAttrs_2) ))] else if (tipo happySelfAttrs) ==(tipo happySubAttrs_3) then [(Rules (Assgm (toTACType (tipo happySelfAttrs) ) (addr happySubAttrs_2) (gentemp (stateout happySubAttrs_2) 0)))] ++ (code happySubAttrs_3) else [(Rules (Assgm (toTACType (tipo happySelfAttrs) ) (addr happySubAttrs_2) (gentemp (stateout happySubAttrs_2) 0))), (Rules (Cast (gentemp (stateout happySubAttrs_2) 0) (toTACType (tipo happySelfAttrs) ) (tipo happySubAttrs_3) ))] ++ (code happySubAttrs_3) , stateout = (stateout happySubAttrs_3) , tipo = (parsetree happySubAttrs_1) , errs = ( if (isJust (lookupEnv ( (fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envloc happySelfAttrs) )) then ["error at "++ (showFromPosn (posn happySubAttrs_2) ) ++": variable " ++ (fromBad (insertEnv (parsetree happySubAttrs_1) Modality1 (parsetree happySubAttrs_2) (envloc happySelfAttrs) (posn happySubAttrs_2) ))] else if(not( (tipo happySubAttrs_3) ==BasicType_Void) && not( (parsetree happySubAttrs_1) ==(tipo happySubAttrs_3) )) then ["error at "++ (showFromPosn (posn happySubAttrs_2) ) ++": variable was defined as '"++ (showBBType (parsetree happySubAttrs_1) ) ++ "' but initialization has type of '"++(showBBType (tipo happySubAttrs_3) )++"'"] else [] ) ++ (errs happySubAttrs_3) , envout = ( if (isOk (insertEnv (parsetree happySubAttrs_1) Modality1 (parsetree happySubAttrs_2) (envloc happySelfAttrs) (posn happySubAttrs_2) )) then (fromOk (insertEnv (parsetree happySubAttrs_1) Modality1 (parsetree happySubAttrs_2) (envloc happySelfAttrs) (posn happySubAttrs_2) )) else (envloc happySubAttrs_3) ) , parsetree = AbsAuL.DeclSP (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) ) , statein = (stateout happySubAttrs_2)  }; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_96 _ _ _  = notHappyAtAll 

happyReduce_97 = happySpecReduce_0  78 happyReduction_97
happyReduction_97  =  HappyAbsSyn78
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , tipo = BasicType_Void , errs = [] , parsetree = AbsAuL.VarINil  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_98 = happySpecReduce_2  78 happyReduction_98
happyReduction_98 (HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn78
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_2) , tipo = (tipo happySubAttrs_2) , errs = [] , parsetree = AbsAuL.VarExp (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_98 _ _  = notHappyAtAll 

happyReduce_99 = happySpecReduce_2  78 happyReduction_99
happyReduction_99 (HappyAbsSyn79  happy_var_2)
	_
	 =  HappyAbsSyn78
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.VarMat (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_99 _ _  = notHappyAtAll 

happyReduce_100 = happySpecReduce_3  79 happyReduction_100
happyReduction_100 _
	(HappyAbsSyn82  happy_var_2)
	_
	 =  HappyAbsSyn79
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.ArrayV0 (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_100 _ _ _  = notHappyAtAll 

happyReduce_101 = happySpecReduce_3  79 happyReduction_101
happyReduction_101 _
	(HappyAbsSyn81  happy_var_2)
	_
	 =  HappyAbsSyn79
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.ArrayV1 (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_101 _ _ _  = notHappyAtAll 

happyReduce_102 = happySpecReduce_1  80 happyReduction_102
happyReduction_102 (HappyAbsSyn70  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypeBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_102 _  = notHappyAtAll 

happyReduce_103 = happySpecReduce_1  80 happyReduction_103
happyReduction_103 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypeChar (vchr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_103 _  = notHappyAtAll 

happyReduce_104 = happySpecReduce_1  80 happyReduction_104
happyReduction_104 (HappyAbsSyn60  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypeDouble (vdbl happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_104 _  = notHappyAtAll 

happyReduce_105 = happySpecReduce_1  80 happyReduction_105
happyReduction_105 (HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypeInteger (vint happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_105 _  = notHappyAtAll 

happyReduce_106 = happySpecReduce_1  80 happyReduction_106
happyReduction_106 (HappyAbsSyn62  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypeString (vstr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_106 _  = notHappyAtAll 

happyReduce_107 = happySpecReduce_1  80 happyReduction_107
happyReduction_107 (HappyAbsSyn71  happy_var_1)
	 =  HappyAbsSyn80
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.VTypePtrVoid (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_107 _  = notHappyAtAll 

happyReduce_108 = happySpecReduce_1  81 happyReduction_108
happyReduction_108 (HappyAbsSyn80  happy_var_1)
	 =  HappyAbsSyn81
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_108 _  = notHappyAtAll 

happyReduce_109 = happySpecReduce_3  81 happyReduction_109
happyReduction_109 (HappyAbsSyn81  happy_var_3)
	_
	(HappyAbsSyn80  happy_var_1)
	 =  HappyAbsSyn81
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_109 _ _ _  = notHappyAtAll 

happyReduce_110 = happySpecReduce_1  82 happyReduction_110
happyReduction_110 (HappyAbsSyn79  happy_var_1)
	 =  HappyAbsSyn82
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_110 _  = notHappyAtAll 

happyReduce_111 = happySpecReduce_3  82 happyReduction_111
happyReduction_111 (HappyAbsSyn82  happy_var_3)
	_
	(HappyAbsSyn79  happy_var_1)
	 =  HappyAbsSyn82
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_111 _ _ _  = notHappyAtAll 

happyReduce_112 = happySpecReduce_2  83 happyReduction_112
happyReduction_112 (HappyAbsSyn77  happy_var_2)
	_
	 =  HappyAbsSyn83
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (errs happySubAttrs_2) , envout = (mergeEnv (envout happySubAttrs_2) (envloc happySelfAttrs) ) , parsetree = AbsAuL.DeclLocal (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) ) , envloc = emptyEnv  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_112 _ _  = notHappyAtAll 

happyReduce_113 = happySpecReduce_3  84 happyReduction_113
happyReduction_113 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn104  happy_var_1)
	 =  HappyAbsSyn84
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) ++ (code happySubAttrs_3) , stateout = (stateout happySubAttrs_3) , errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then [] else if ( (tipo happySelfAttrs) ==(tipo happySubAttrs_3) ) then if((snd . getTypeV . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) ) ==Modality_const) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": cannot assign value to a constant variable "++ ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) ++"!"] else [] else ["error at " ++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": expects argument of type '" ++ (showBBType (tipo happySelfAttrs) ) ++ "' but has type '"++ (showBBType (tipo happySubAttrs_3) ) ++"'"]) ++ (errs happySubAttrs_3) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then (if ((isVarEnv . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then ((fst . getTypeV . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , parsetree = AbsAuL.AssD (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_113 _ _ _  = notHappyAtAll 

happyReduce_114 = happySpecReduce_1  85 happyReduction_114
happyReduction_114 (HappyAbsSyn86  happy_var_1)
	 =  HappyAbsSyn85
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , tipo = AbsAuL.BasicType_Void , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.FuncBW (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_114 _  = notHappyAtAll 

happyReduce_115 = happySpecReduce_1  85 happyReduction_115
happyReduction_115 (HappyAbsSyn87  happy_var_1)
	 =  HappyAbsSyn85
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.FuncBR (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_115 _  = notHappyAtAll 

happyReduce_116 = happyReduce 4 85 happyReduction_116
happyReduction_116 (_ `HappyStk`
	(HappyAbsSyn99  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn63  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn85
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.FnctCall (vlident happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_117 = happyReduce 4 86 happyReduction_117
happyReduction_117 (_ `HappyStk`
	(HappyAbsSyn107  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn86
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_3) , errs = (if (not( (tipo happySubAttrs_3) ==BasicType_Int)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeInt' need to be Int!"] else [] ) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.WriteI (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_118 = happyReduce 4 86 happyReduction_118
happyReduction_118 (_ `HappyStk`
	(HappyAbsSyn107  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn86
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_3) , errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_Float)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeFloat' need to be Float!"] else [] ) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.WriteF (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_119 = happyReduce 4 86 happyReduction_119
happyReduction_119 (_ `HappyStk`
	(HappyAbsSyn107  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn86
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_3) , errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_Char)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeChar' need to be Char!"] else [] ) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.WriteC (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_120 = happyReduce 4 86 happyReduction_120
happyReduction_120 (_ `HappyStk`
	(HappyAbsSyn107  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn86
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_3) , errs = (if (not ( (tipo happySubAttrs_3) ==BasicType_String)) then ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type for 'writeString' need to be String!"] else [] ) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.WriteS (parsetree happySubAttrs_3)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_3 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_121 = happySpecReduce_3  87 happyReduction_121
happyReduction_121 _
	_
	_
	 =  HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (FuncCall (addr happySelfAttrs) IntTypeTac ReadInt 0))] , stateout = skipState (statein happySelfAttrs) 1 0 , addr = (gentemp (statein happySelfAttrs) 1) , errs = [] , tipo = BasicType_Int , parsetree = AbsAuL.ReadI  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_122 = happySpecReduce_3  87 happyReduction_122
happyReduction_122 _
	_
	_
	 =  HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (FuncCall (addr happySelfAttrs) FloatTypeTac ReadFloat 0))] , stateout = skipState (statein happySelfAttrs) 1 0 , addr = (gentemp (statein happySelfAttrs) 1) , errs = [] , tipo = BasicType_Float , parsetree = AbsAuL.ReadF  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_123 = happySpecReduce_3  87 happyReduction_123
happyReduction_123 _
	_
	_
	 =  HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (FuncCall (addr happySelfAttrs) CharTypeTac ReadChar 0))] , stateout = skipState (statein happySelfAttrs) 1 0 , addr = (gentemp (statein happySelfAttrs) 1) , errs = [] , tipo = BasicType_Char , parsetree = AbsAuL.ReadC  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_124 = happySpecReduce_3  87 happyReduction_124
happyReduction_124 _
	_
	_
	 =  HappyAbsSyn87
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (FuncCall (addr happySelfAttrs) CharTypeTac ReadString 0))] , stateout = skipState (statein happySelfAttrs) 1 0 , addr = (gentemp (statein happySelfAttrs) 1) , errs = [] , tipo = BasicType_String , parsetree = AbsAuL.ReadS  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_125 = happySpecReduce_3  88 happyReduction_125
happyReduction_125 (HappyAbsSyn76  happy_var_3)
	(HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn88
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (errs happySubAttrs_2) ++ (errs happySubAttrs_3) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.LoopW (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , envloc = (envloc happySelfAttrs)  }; happyConditions = []++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_125 _ _ _  = notHappyAtAll 

happyReduce_126 = happyReduce 4 89 happyReduction_126
happyReduction_126 ((HappyAbsSyn107  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn67  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn89
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (errs happySubAttrs_2) ++ (errs happySubAttrs_4) , envout = (envout happySubAttrs_2) , parsetree = AbsAuL.LoopR (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , envloc = (envloc happySelfAttrs)  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs)  }; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_127 = happyReduce 8 90 happyReduction_127
happyReduction_127 ((HappyAbsSyn76  happy_var_8) `HappyStk`
	(HappyAbsSyn91  happy_var_7) `HappyStk`
	(HappyAbsSyn107  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn107  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn63  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn90
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (if ( all (\(x,y) -> x ==y ) [( (tipo happySubAttrs_4) , (tipo happySubAttrs_6) ),( (tipo happySubAttrs_6) , (tipo happySubAttrs_7) ),( (tipo happySubAttrs_7) , (tipo happySubAttrs_4) )]) then [] else ["error at "++ (showFromPosn (posn happySubAttrs_2) ) ++": incompatible types in 'for' loop conditions!"]) ++ (errs happySubAttrs_4) ++ (errs happySubAttrs_6) ++ (errs happySubAttrs_7) ++ (errs happySubAttrs_8) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.LoopF (vlident happySubAttrs_2) (parsetree happySubAttrs_4) (parsetree happySubAttrs_6) (parsetree happySubAttrs_7) (parsetree happySubAttrs_8)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs)  }; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs)  }; (happyConditions_8,happySubAttrs_8) = happy_var_8 happyEmptyAttrs{ envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , envloc = if((all (\(x,y) -> x ==y ) [( (tipo happySubAttrs_4) , (tipo happySubAttrs_6) ),( (tipo happySubAttrs_6) , (tipo happySubAttrs_7) ),( (tipo happySubAttrs_7) , (tipo happySubAttrs_4) )]) ) then (fromOk (insertEnv (tipo happySubAttrs_7) Modality1 (LExpS (vlident happySubAttrs_2) ) emptyEnv (posn happySubAttrs_2) )) else (fromOk (insertEnv BasicType_Int Modality1 (LExpS (vlident happySubAttrs_2) ) emptyEnv (posn happySubAttrs_2) ))  }; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_6++happyConditions_7++happyConditions_8 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_128 = happyReduce 5 90 happyReduction_128
happyReduction_128 ((HappyAbsSyn76  happy_var_5) `HappyStk`
	(HappyAbsSyn63  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn63  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn90
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.LoopFE (vlident happySubAttrs_2) (vlident happySubAttrs_4) (parsetree happySubAttrs_5)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_5 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_129 = happySpecReduce_0  91 happyReduction_129
happyReduction_129  =  HappyAbsSyn91
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , errs = [] , tipo = BasicType_Int , parsetree = AbsAuL.FIncE  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_130 = happySpecReduce_2  91 happyReduction_130
happyReduction_130 (HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn91
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (errs happySubAttrs_2) , tipo = (tipo happySubAttrs_2) , parsetree = AbsAuL.FInc (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_130 _ _  = notHappyAtAll 

happyReduce_131 = happyReduce 7 92 happyReduction_131
happyReduction_131 (_ `HappyStk`
	(HappyAbsSyn93  happy_var_6) `HappyStk`
	(HappyAbsSyn95  happy_var_5) `HappyStk`
	(HappyAbsSyn67  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn107  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn92
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) ++ (labelRules (condTrue happySubAttrs_2) (code happySubAttrs_4) ) ++ [(Rules (Goto (nextLabel happySelfAttrs) ))] ++ (labelRules (condFalse happySubAttrs_2) (code happySubAttrs_5) ) , errs = (errs happySubAttrs_2) ++ (errs happySubAttrs_4) ++ (errs happySubAttrs_5) ++ (errs happySubAttrs_6) , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.IfM (parsetree happySubAttrs_2) (parsetree happySubAttrs_4) (reverse (parsetree happySubAttrs_5) ) (parsetree happySubAttrs_6)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_2) 1 , statein = (statein happySelfAttrs) , envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_2) 2  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_2)  }; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_2)  }; (happyConditions_6,happySubAttrs_6) = happy_var_6 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_2)  }; happyConditions = []++happyConditions_2++happyConditions_4++happyConditions_5++happyConditions_6 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_132 = happySpecReduce_2  93 happyReduction_132
happyReduction_132 (HappyAbsSyn67  happy_var_2)
	_
	 =  HappyAbsSyn93
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (errs happySubAttrs_2) , parsetree = AbsAuL.ElseS (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , envloc = (envloc happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_132 _ _  = notHappyAtAll 

happyReduce_133 = happySpecReduce_0  93 happyReduction_133
happyReduction_133  =  HappyAbsSyn93
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , errs = [] , envout = (envloc happySelfAttrs) , parsetree = AbsAuL.ElseE  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_134 = happyReduce 4 94 happyReduction_134
happyReduction_134 ((HappyAbsSyn67  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn107  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn94
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) ++ (labelRules (condTrue happySubAttrs_2) (code happySubAttrs_4) ) , errs = (errs happySubAttrs_2) ++ (errs happySubAttrs_4) , parsetree = AbsAuL.ElseIfD (parsetree happySubAttrs_2) (parsetree happySubAttrs_4)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_2) 1 , statein = (statein happySelfAttrs) , envin = mergeEnv (envloc happySelfAttrs) (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_2) 2  }; (happyConditions_4,happySubAttrs_4) = happy_var_4 happyEmptyAttrs{ envloc = (envloc happySelfAttrs) , envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_2)  }; happyConditions = []++happyConditions_2++happyConditions_4 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_135 = happySpecReduce_0  95 happyReduction_135
happyReduction_135  =  HappyAbsSyn95
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , errs = [] , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_136 = happySpecReduce_2  95 happyReduction_136
happyReduction_136 (HappyAbsSyn94  happy_var_2)
	(HappyAbsSyn95  happy_var_1)
	 =  HappyAbsSyn95
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , errs = (errs happySubAttrs_1) ++ (errs happySubAttrs_2) , parsetree = flip (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , envloc = (envloc happySelfAttrs)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , envloc = (envloc happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_136 _ _  = notHappyAtAll 

happyReduce_137 = happySpecReduce_2  96 happyReduction_137
happyReduction_137 (HappyAbsSyn97  happy_var_2)
	_
	 =  HappyAbsSyn96
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.JumpR (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_137 _ _  = notHappyAtAll 

happyReduce_138 = happySpecReduce_0  97 happyReduction_138
happyReduction_138  =  HappyAbsSyn97
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.JumpRE  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_139 = happySpecReduce_1  97 happyReduction_139
happyReduction_139 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn97
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.JumpRV (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_139 _  = notHappyAtAll 

happyReduce_140 = happySpecReduce_1  98 happyReduction_140
happyReduction_140 _
	 =  HappyAbsSyn98
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.JumpB  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_141 = happySpecReduce_0  99 happyReduction_141
happyReduction_141  =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_142 = happySpecReduce_1  99 happyReduction_142
happyReduction_142 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_142 _  = notHappyAtAll 

happyReduce_143 = happySpecReduce_3  99 happyReduction_143
happyReduction_143 (HappyAbsSyn99  happy_var_3)
	_
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn99
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_143 _ _ _  = notHappyAtAll 

happyReduce_144 = happyReduce 8 100 happyReduction_144
happyReduction_144 (_ `HappyStk`
	(HappyAbsSyn67  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn102  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn63  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn72  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn100
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.FnctDecl (parsetree happySubAttrs_1) (vlident happySubAttrs_3) (parsetree happySubAttrs_5) (parsetree happySubAttrs_7)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; (happyConditions_5,happySubAttrs_5) = happy_var_5 happyEmptyAttrs; (happyConditions_7,happySubAttrs_7) = happy_var_7 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3++happyConditions_5++happyConditions_7 } in (happyConditions,happySelfAttrs)
	) `HappyStk` happyRest

happyReduce_145 = happySpecReduce_3  101 happyReduction_145
happyReduction_145 (HappyAbsSyn104  happy_var_3)
	(HappyAbsSyn69  happy_var_2)
	(HappyAbsSyn103  happy_var_1)
	 =  HappyAbsSyn101
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.ParmDeclF (parsetree happySubAttrs_1) (parsetree happySubAttrs_2) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_145 _ _ _  = notHappyAtAll 

happyReduce_146 = happySpecReduce_0  102 happyReduction_146
happyReduction_146  =  HappyAbsSyn102
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = []  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_147 = happySpecReduce_1  102 happyReduction_147
happyReduction_147 (HappyAbsSyn101  happy_var_1)
	 =  HappyAbsSyn102
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_147 _  = notHappyAtAll 

happyReduce_148 = happySpecReduce_3  102 happyReduction_148
happyReduction_148 (HappyAbsSyn102  happy_var_3)
	_
	(HappyAbsSyn101  happy_var_1)
	 =  HappyAbsSyn102
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_148 _ _ _  = notHappyAtAll 

happyReduce_149 = happySpecReduce_0  103 happyReduction_149
happyReduction_149  =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , parsetree = AbsAuL.Modality1  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_150 = happySpecReduce_1  103 happyReduction_150
happyReduction_150 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_val  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_151 = happySpecReduce_1  103 happyReduction_151
happyReduction_151 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_ref  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_152 = happySpecReduce_1  103 happyReduction_152
happyReduction_152 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_const  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_153 = happySpecReduce_1  103 happyReduction_153
happyReduction_153 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_res  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_154 = happySpecReduce_1  103 happyReduction_154
happyReduction_154 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_valres  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_155 = happySpecReduce_1  103 happyReduction_155
happyReduction_155 _
	 =  HappyAbsSyn103
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ parsetree = AbsAuL.Modality_name  }; happyConditions = [] } in (happyConditions,happySelfAttrs)
	)

happyReduce_156 = happySpecReduce_1  104 happyReduction_156
happyReduction_156 (HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn104
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , posn = (posn happySubAttrs_1) , parsetree = AbsAuL.LExpS (vlident happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_156 _  = notHappyAtAll 

happyReduce_157 = happySpecReduce_2  104 happyReduction_157
happyReduction_157 (HappyAbsSyn104  happy_var_2)
	_
	 =  HappyAbsSyn104
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , posn = (posn happySubAttrs_2) , parsetree = AbsAuL.LExpDR (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_157 _ _  = notHappyAtAll 

happyReduce_158 = happySpecReduce_2  104 happyReduction_158
happyReduction_158 (HappyAbsSyn105  happy_var_2)
	(HappyAbsSyn63  happy_var_1)
	 =  HappyAbsSyn104
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , posn = (posn happySubAttrs_1) , parsetree = AbsAuL.LExpA (vlident happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_158 _ _  = notHappyAtAll 

happyReduce_159 = happySpecReduce_1  105 happyReduction_159
happyReduction_159 (HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:[]) (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_159 _  = notHappyAtAll 

happyReduce_160 = happySpecReduce_2  105 happyReduction_160
happyReduction_160 (HappyAbsSyn105  happy_var_2)
	(HappyAbsSyn106  happy_var_1)
	 =  HappyAbsSyn105
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = (:) (parsetree happySubAttrs_1) (parsetree happySubAttrs_2)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_160 _ _  = notHappyAtAll 

happyReduce_161 = happySpecReduce_3  106 happyReduction_161
happyReduction_161 _
	(HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn106
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.Dims (vint happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_161 _ _ _  = notHappyAtAll 

happyReduce_162 = happySpecReduce_3  107 happyReduction_162
happyReduction_162 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_3) , tipo = BasicType_Bool , errs = (if (( (tipo happySubAttrs_1) ==BasicType_Bool) && ( (tipo happySubAttrs_3) ==BasicType_Bool)) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for 'or' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Or (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = skipState (statein happySelfAttrs) 1 0  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_162 _ _ _  = notHappyAtAll 

happyReduce_163 = happySpecReduce_3  107 happyReduction_163
happyReduction_163 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) ++ (labelRules (condTrue happySubAttrs_1) (code happySubAttrs_3) ) , stateout = skipState (stateout happySubAttrs_3) 0 1 , tipo = BasicType_Bool , errs = (if (( (tipo happySubAttrs_1) ==BasicType_Bool) && ( (tipo happySubAttrs_3) ==BasicType_Bool)) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for 'and' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.And (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condTrue = genlabel (stateout happySubAttrs_3) 1  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_163 _ _ _  = notHappyAtAll 

happyReduce_164 = happySpecReduce_1  107 happyReduction_164
happyReduction_164 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_164 _  = notHappyAtAll 

happyReduce_165 = happySpecReduce_2  108 happyReduction_165
happyReduction_165 (HappyAbsSyn107  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , addr = (addr happySubAttrs_2) , stateout = (stateout happySubAttrs_2) , tipo = BasicType_Bool , errs = (if ( (tipo happySubAttrs_2) ==BasicType_Bool) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type need to be compatible for 'and' operations!"]) ++ (errs happySubAttrs_2) , parsetree = AbsAuL.Not (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_165 _ _  = notHappyAtAll 

happyReduce_166 = happySpecReduce_1  108 happyReduction_166
happyReduction_166 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_166 _  = notHappyAtAll 

happyReduce_167 = happySpecReduce_3  109 happyReduction_167
happyReduction_167 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsEq , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsEq , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for ' ==' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Eq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_3) 1 , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_3) 2  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_3) 4 , statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_3) 5  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_167 _ _ _  = notHappyAtAll 

happyReduce_168 = happySpecReduce_3  109 happyReduction_168
happyReduction_168 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsDiff , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsDiff , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '~ =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Neq (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_3) 1 , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_3) 2  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ condTrue = genlabel (stateout happySubAttrs_3) 4 , statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , condFalse = genlabel (stateout happySubAttrs_3) 5  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_168 _ _ _  = notHappyAtAll 

happyReduce_169 = happySpecReduce_3  109 happyReduction_169
happyReduction_169 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpDisEq (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsL , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsL , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '<' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Lt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_169 _ _ _  = notHappyAtAll 

happyReduce_170 = happySpecReduce_3  109 happyReduction_170
happyReduction_170 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpDisEq (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsLEQ , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsLEQ , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '< =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.LtE (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_170 _ _ _  = notHappyAtAll 

happyReduce_171 = happySpecReduce_3  109 happyReduction_171
happyReduction_171 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpDisEq (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsG , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsG , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '>' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Gt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_171 _ _ _  = notHappyAtAll 

happyReduce_172 = happySpecReduce_3  109 happyReduction_172
happyReduction_172 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeRelOpDisEq (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsGEQ , stateout = stateoutRelOpEqDif (tipo happySubAttrs_1) (tipo happySubAttrs_3) (code happySubAttrs_1) (code happySubAttrs_3) (condTrue happySelfAttrs) (condFalse happySelfAttrs) (addr happySubAttrs_1) (addr happySubAttrs_3) (stateout happySubAttrs_3) IsGEQ , tipo = BasicType_Bool , errs = (if (isValidCmp (tipo happySubAttrs_1) (tipo happySubAttrs_3) ) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be compatible for '> =' operations!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.GtE (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (stateout happySubAttrs_1)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_172 _ _ _  = notHappyAtAll 

happyReduce_173 = happySpecReduce_1  109 happyReduction_173
happyReduction_173 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_173 _  = notHappyAtAll 

happyReduce_174 = happySpecReduce_3  110 happyReduction_174
happyReduction_174 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Add (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_174 _ _ _  = notHappyAtAll 

happyReduce_175 = happySpecReduce_3  110 happyReduction_175
happyReduction_175 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Sub (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_175 _ _ _  = notHappyAtAll 

happyReduce_176 = happySpecReduce_1  110 happyReduction_176
happyReduction_176 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_176 _  = notHappyAtAll 

happyReduce_177 = happySpecReduce_3  111 happyReduction_177
happyReduction_177 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Mul (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_177 _ _ _  = notHappyAtAll 

happyReduce_178 = happySpecReduce_3  111 happyReduction_178
happyReduction_178 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Div (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_178 _ _ _  = notHappyAtAll 

happyReduce_179 = happySpecReduce_3  111 happyReduction_179
happyReduction_179 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Mod (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_179 _ _ _  = notHappyAtAll 

happyReduce_180 = happySpecReduce_1  111 happyReduction_180
happyReduction_180 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_180 _  = notHappyAtAll 

happyReduce_181 = happySpecReduce_3  112 happyReduction_181
happyReduction_181 (HappyAbsSyn107  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [(Rules (AssgmBin (toTACType (tipo happySelfAttrs) ) (gentemp (statein happySelfAttrs) 0) (addr happySubAttrs_1) Exp (addr happySubAttrs_3) ))] ++ (code happySubAttrs_1) ++ (code happySubAttrs_3) , tipo = (if (( (tipo happySubAttrs_1) ==BasicType_Float) || ( (tipo happySubAttrs_3) ==BasicType_Float)) then BasicType_Float else BasicType_Int ) , errs = (if ((( (tipo happySubAttrs_1) ==BasicType_Int) || ( (tipo happySubAttrs_1) ==BasicType_Float)) && (( (tipo happySubAttrs_3) ==BasicType_Int) || ( (tipo happySubAttrs_3) ==BasicType_Float))) then [] else ["error at "++ ((showFromPosn . tokenPosn) happy_var_2 ) ++ ": type need to be Int or Float!"]) ++ (errs happySubAttrs_1) ++ (errs happySubAttrs_3) , parsetree = AbsAuL.Add (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = skipState (statein happySelfAttrs) 1 0 , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_1) 0)  }; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs{ statein = (stateout happySubAttrs_1) , envin = (envin happySelfAttrs) , addr = (gentemp (statein happySubAttrs_3) 0)  }; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_181 _ _ _  = notHappyAtAll 

happyReduce_182 = happySpecReduce_1  112 happyReduction_182
happyReduction_182 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_182 _  = notHappyAtAll 

happyReduce_183 = happySpecReduce_2  113 happyReduction_183
happyReduction_183 (HappyAbsSyn107  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = codeUnOp (tipo happySubAttrs_2) (addr happySubAttrs_2) (stateout happySubAttrs_2) Negation , addr = addrUnOp (tipo happySubAttrs_2) (addr happySubAttrs_2) (stateout happySubAttrs_2) Negation , stateout = stateoutUnOp (tipo happySubAttrs_2) (addr happySubAttrs_2) (stateout happySubAttrs_2) Negation , tipo = ( if (( (tipo happySubAttrs_2) ==BasicType_Int) || ( (tipo happySubAttrs_2) ==BasicType_Float)) then (tipo happySubAttrs_2) else BasicType_Float ) , errs = ( if (( (tipo happySubAttrs_2) ==BasicType_Int) || ( (tipo happySubAttrs_2) ==BasicType_Float)) then [] else ["error at " ++ ((showFromPosn . tokenPosn) happy_var_1 ) ++ ": type need to be Int or Float!"] ) ++ (errs happySubAttrs_2) , parsetree = AbsAuL.Neg (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ envin = (envin happySelfAttrs) , statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_183 _ _  = notHappyAtAll 

happyReduce_184 = happySpecReduce_1  113 happyReduction_184
happyReduction_184 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_184 _  = notHappyAtAll 

happyReduce_185 = happySpecReduce_1  114 happyReduction_185
happyReduction_185 (HappyAbsSyn85  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = AbsAuL.FCall (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ envin = (envin happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_185 _  = notHappyAtAll 

happyReduce_186 = happySpecReduce_3  114 happyReduction_186
happyReduction_186 (HappyAbsSyn107  happy_var_3)
	_
	(HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , parsetree = AbsAuL.FStrCnt (parsetree happySubAttrs_1) (parsetree happySubAttrs_3)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs; (happyConditions_3,happySubAttrs_3) = happy_var_3 happyEmptyAttrs; happyConditions = []++happyConditions_1++happyConditions_3 } in (happyConditions,happySelfAttrs)
	)
happyReduction_186 _ _ _  = notHappyAtAll 

happyReduce_187 = happySpecReduce_2  114 happyReduction_187
happyReduction_187 (HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , parsetree = AbsAuL.FLen (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_187 _ _  = notHappyAtAll 

happyReduce_188 = happySpecReduce_1  114 happyReduction_188
happyReduction_188 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_188 _  = notHappyAtAll 

happyReduce_189 = happySpecReduce_1  115 happyReduction_189
happyReduction_189 (HappyAbsSyn61  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = [] , stateout = (stateout happySubAttrs_1) , addr = (addr happySubAttrs_1) , errs = [] , envout = (envin happySelfAttrs) , tipo = BasicType_Int , parsetree = AbsAuL.ValInt (vint happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_189 _  = notHappyAtAll 

happyReduce_190 = happySpecReduce_1  115 happyReduction_190
happyReduction_190 (HappyAbsSyn104  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then ["error : reference to " ++ ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) ++ " at line " ++ (showFromPosn (posn happySubAttrs_1) ) ++ "is invalid (maybe a function or not declared variable?)"] else []) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then (if ((isVarEnv . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) then ((fst . getTypeV . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_1) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , parsetree = AbsAuL.ValVariable (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_190 _  = notHappyAtAll 

happyReduce_191 = happySpecReduce_2  115 happyReduction_191
happyReduction_191 (HappyAbsSyn104  happy_var_2)
	_
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , errs = (if ( (tipo happySelfAttrs) ==BasicType_Void) then ["error : reference to " ++ ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) ++ " at line " ++ (showFromPosn (posn happySubAttrs_2) ) ++ "is invalid (maybe a function or not declared variable?)"] else []) , tipo = (if (isJust (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) then (if ((isVarEnv . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) then ((fst . getTypeV . fromJust) (lookupEnv ((fromLIdent . getLIdentlexp) (parsetree happySubAttrs_2) ) (envin happySelfAttrs) )) else BasicType_Void ) else BasicType_Void ) , parsetree = AbsAuL.ValRef (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_191 _ _  = notHappyAtAll 

happyReduce_192 = happySpecReduce_1  115 happyReduction_192
happyReduction_192 (HappyAbsSyn60  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_1) , code = [] , addr = (addr happySubAttrs_1) , errs = [] , tipo = BasicType_Float , parsetree = AbsAuL.ValDouble (vdbl happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_192 _  = notHappyAtAll 

happyReduce_193 = happySpecReduce_1  115 happyReduction_193
happyReduction_193 (HappyAbsSyn62  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_1) , code = [] , addr = (addr happySubAttrs_1) , errs = [] , tipo = BasicType_String , parsetree = AbsAuL.ValString (vstr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_193 _  = notHappyAtAll 

happyReduce_194 = happySpecReduce_1  115 happyReduction_194
happyReduction_194 (HappyAbsSyn59  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_1) , addr = (addr happySubAttrs_1) , code = [] , errs = [] , tipo = BasicType_Char , parsetree = AbsAuL.ValChar (vchr happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_194 _  = notHappyAtAll 

happyReduce_195 = happySpecReduce_1  115 happyReduction_195
happyReduction_195 (HappyAbsSyn70  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_1) , addr = (addr happySubAttrs_1) , code = [] , errs = [] , tipo = BasicType_Int , parsetree = AbsAuL.ValBoolean (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_195 _  = notHappyAtAll 

happyReduce_196 = happySpecReduce_1  115 happyReduction_196
happyReduction_196 (HappyAbsSyn71  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ stateout = (stateout happySubAttrs_1) , addr = (addr happySubAttrs_1) , code = [] , errs = [] , tipo = BasicType_Void , parsetree = AbsAuL.ValPtr (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ statein = (statein happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_196 _  = notHappyAtAll 

happyReduce_197 = happySpecReduce_1  115 happyReduction_197
happyReduction_197 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_197 _  = notHappyAtAll 

happyReduce_198 = happySpecReduce_1  116 happyReduction_198
happyReduction_198 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_198 _  = notHappyAtAll 

happyReduce_199 = happySpecReduce_1  117 happyReduction_199
happyReduction_199 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_199 _  = notHappyAtAll 

happyReduce_200 = happySpecReduce_1  118 happyReduction_200
happyReduction_200 (HappyAbsSyn107  happy_var_1)
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_1) , addr = (addr happySubAttrs_1) , stateout = (stateout happySubAttrs_1) , tipo = (tipo happySubAttrs_1) , errs = (errs happySubAttrs_1) , parsetree = (parsetree happySubAttrs_1)  }; (happyConditions_1,happySubAttrs_1) = happy_var_1 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_1 } in (happyConditions,happySelfAttrs)
	)
happyReduction_200 _  = notHappyAtAll 

happyReduce_201 = happySpecReduce_3  119 happyReduction_201
happyReduction_201 _
	(HappyAbsSyn107  happy_var_2)
	_
	 =  HappyAbsSyn107
		 (\happyInhAttrs -> let { happySelfAttrs = happyInhAttrs{ code = (code happySubAttrs_2) , addr = (addr happySubAttrs_2) , stateout = (stateout happySubAttrs_2) , tipo = (tipo happySubAttrs_2) , errs = (errs happySubAttrs_2) , parsetree = (parsetree happySubAttrs_2)  }; (happyConditions_2,happySubAttrs_2) = happy_var_2 happyEmptyAttrs{ condTrue = (condTrue happySelfAttrs) , statein = (statein happySelfAttrs) , envin = (envin happySelfAttrs) , condFalse = (condFalse happySelfAttrs)  }; happyConditions = []++happyConditions_2 } in (happyConditions,happySelfAttrs)
	)
happyReduction_201 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 190 190 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 120;
	PT _ (TS _ 2) -> cont 121;
	PT _ (TS _ 3) -> cont 122;
	PT _ (TS _ 4) -> cont 123;
	PT _ (TS _ 5) -> cont 124;
	PT _ (TS _ 6) -> cont 125;
	PT _ (TS _ 7) -> cont 126;
	PT _ (TS _ 8) -> cont 127;
	PT _ (TS _ 9) -> cont 128;
	PT _ (TS _ 10) -> cont 129;
	PT _ (TS _ 11) -> cont 130;
	PT _ (TS _ 12) -> cont 131;
	PT _ (TS _ 13) -> cont 132;
	PT _ (TS _ 14) -> cont 133;
	PT _ (TS _ 15) -> cont 134;
	PT _ (TS _ 16) -> cont 135;
	PT _ (TS _ 17) -> cont 136;
	PT _ (TS _ 18) -> cont 137;
	PT _ (TS _ 19) -> cont 138;
	PT _ (TS _ 20) -> cont 139;
	PT _ (TS _ 21) -> cont 140;
	PT _ (TS _ 22) -> cont 141;
	PT _ (TS _ 23) -> cont 142;
	PT _ (TS _ 24) -> cont 143;
	PT _ (TS _ 25) -> cont 144;
	PT _ (TS _ 26) -> cont 145;
	PT _ (TS _ 27) -> cont 146;
	PT _ (TS _ 28) -> cont 147;
	PT _ (TS _ 29) -> cont 148;
	PT _ (TS _ 30) -> cont 149;
	PT _ (TS _ 31) -> cont 150;
	PT _ (TS _ 32) -> cont 151;
	PT _ (TS _ 33) -> cont 152;
	PT _ (TS _ 34) -> cont 153;
	PT _ (TS _ 35) -> cont 154;
	PT _ (TS _ 36) -> cont 155;
	PT _ (TS _ 37) -> cont 156;
	PT _ (TS _ 38) -> cont 157;
	PT _ (TS _ 39) -> cont 158;
	PT _ (TS _ 40) -> cont 159;
	PT _ (TS _ 41) -> cont 160;
	PT _ (TS _ 42) -> cont 161;
	PT _ (TS _ 43) -> cont 162;
	PT _ (TS _ 44) -> cont 163;
	PT _ (TS _ 45) -> cont 164;
	PT _ (TS _ 46) -> cont 165;
	PT _ (TS _ 47) -> cont 166;
	PT _ (TS _ 48) -> cont 167;
	PT _ (TS _ 49) -> cont 168;
	PT _ (TS _ 50) -> cont 169;
	PT _ (TS _ 51) -> cont 170;
	PT _ (TS _ 52) -> cont 171;
	PT _ (TS _ 53) -> cont 172;
	PT _ (TS _ 54) -> cont 173;
	PT _ (TS _ 55) -> cont 174;
	PT _ (TS _ 56) -> cont 175;
	PT _ (TS _ 57) -> cont 176;
	PT _ (TS _ 58) -> cont 177;
	PT _ (TS _ 59) -> cont 178;
	PT _ (TS _ 60) -> cont 179;
	PT _ (TS _ 61) -> cont 180;
	PT _ (TS _ 62) -> cont 181;
	PT _ (TS _ 63) -> cont 182;
	PT _ (TS _ 64) -> cont 183;
	PT _ (TS _ 65) -> cont 184;
	PT _ (TC happy_dollar_dollar) -> cont 185;
	PT _ (TD happy_dollar_dollar) -> cont 186;
	PT _ (TI happy_dollar_dollar) -> cont 187;
	PT _ (TL happy_dollar_dollar) -> cont 188;
	PT _ (T_LIdent happy_dollar_dollar) -> cont 189;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 190 tk tks = happyError' (tks, explist)
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
do_pProgram tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn64 z -> happyReturn z; _other -> notHappyAtAll })

do_pListPGlobl tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn65 z -> happyReturn z; _other -> notHappyAtAll })

do_pPGlobl tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn66 z -> happyReturn z; _other -> notHappyAtAll })

do_pBlock tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_3 tks) (\x -> case x of {HappyAbsSyn67 z -> happyReturn z; _other -> notHappyAtAll })

do_pListStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_4 tks) (\x -> case x of {HappyAbsSyn68 z -> happyReturn z; _other -> notHappyAtAll })

do_pBasicType tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_5 tks) (\x -> case x of {HappyAbsSyn69 z -> happyReturn z; _other -> notHappyAtAll })

do_pBoolean tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_6 tks) (\x -> case x of {HappyAbsSyn70 z -> happyReturn z; _other -> notHappyAtAll })

do_pPtrVoid tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_7 tks) (\x -> case x of {HappyAbsSyn71 z -> happyReturn z; _other -> notHappyAtAll })

do_pCompoundType tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_8 tks) (\x -> case x of {HappyAbsSyn72 z -> happyReturn z; _other -> notHappyAtAll })

do_pBracks tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_9 tks) (\x -> case x of {HappyAbsSyn73 z -> happyReturn z; _other -> notHappyAtAll })

do_pListBracks tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_10 tks) (\x -> case x of {HappyAbsSyn74 z -> happyReturn z; _other -> notHappyAtAll })

do_pStm tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_11 tks) (\x -> case x of {HappyAbsSyn75 z -> happyReturn z; _other -> notHappyAtAll })

do_pEBlk tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_12 tks) (\x -> case x of {HappyAbsSyn76 z -> happyReturn z; _other -> notHappyAtAll })

do_pDecl tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_13 tks) (\x -> case x of {HappyAbsSyn77 z -> happyReturn z; _other -> notHappyAtAll })

do_pVarInit tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_14 tks) (\x -> case x of {HappyAbsSyn78 z -> happyReturn z; _other -> notHappyAtAll })

do_pArray tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_15 tks) (\x -> case x of {HappyAbsSyn79 z -> happyReturn z; _other -> notHappyAtAll })

do_pVType tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_16 tks) (\x -> case x of {HappyAbsSyn80 z -> happyReturn z; _other -> notHappyAtAll })

do_pListVType tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_17 tks) (\x -> case x of {HappyAbsSyn81 z -> happyReturn z; _other -> notHappyAtAll })

do_pListArray tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_18 tks) (\x -> case x of {HappyAbsSyn82 z -> happyReturn z; _other -> notHappyAtAll })

do_pLocal tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_19 tks) (\x -> case x of {HappyAbsSyn83 z -> happyReturn z; _other -> notHappyAtAll })

do_pAss tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_20 tks) (\x -> case x of {HappyAbsSyn84 z -> happyReturn z; _other -> notHappyAtAll })

do_pFunc tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_21 tks) (\x -> case x of {HappyAbsSyn85 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncWrite tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_22 tks) (\x -> case x of {HappyAbsSyn86 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncRead tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_23 tks) (\x -> case x of {HappyAbsSyn87 z -> happyReturn z; _other -> notHappyAtAll })

do_pWhile tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_24 tks) (\x -> case x of {HappyAbsSyn88 z -> happyReturn z; _other -> notHappyAtAll })

do_pRepeat tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_25 tks) (\x -> case x of {HappyAbsSyn89 z -> happyReturn z; _other -> notHappyAtAll })

do_pFor tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_26 tks) (\x -> case x of {HappyAbsSyn90 z -> happyReturn z; _other -> notHappyAtAll })

do_pIncrement tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_27 tks) (\x -> case x of {HappyAbsSyn91 z -> happyReturn z; _other -> notHappyAtAll })

do_pIf tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_28 tks) (\x -> case x of {HappyAbsSyn92 z -> happyReturn z; _other -> notHappyAtAll })

do_pElse tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_29 tks) (\x -> case x of {HappyAbsSyn93 z -> happyReturn z; _other -> notHappyAtAll })

do_pElseIf tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_30 tks) (\x -> case x of {HappyAbsSyn94 z -> happyReturn z; _other -> notHappyAtAll })

do_pListElseIf tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_31 tks) (\x -> case x of {HappyAbsSyn95 z -> happyReturn z; _other -> notHappyAtAll })

do_pReturn tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_32 tks) (\x -> case x of {HappyAbsSyn96 z -> happyReturn z; _other -> notHappyAtAll })

do_pRValue tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_33 tks) (\x -> case x of {HappyAbsSyn97 z -> happyReturn z; _other -> notHappyAtAll })

do_pBreak tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_34 tks) (\x -> case x of {HappyAbsSyn98 z -> happyReturn z; _other -> notHappyAtAll })

do_pListRExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_35 tks) (\x -> case x of {HappyAbsSyn99 z -> happyReturn z; _other -> notHappyAtAll })

do_pFuncD tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_36 tks) (\x -> case x of {HappyAbsSyn100 z -> happyReturn z; _other -> notHappyAtAll })

do_pParamF tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_37 tks) (\x -> case x of {HappyAbsSyn101 z -> happyReturn z; _other -> notHappyAtAll })

do_pListParamF tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_38 tks) (\x -> case x of {HappyAbsSyn102 z -> happyReturn z; _other -> notHappyAtAll })

do_pModality tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_39 tks) (\x -> case x of {HappyAbsSyn103 z -> happyReturn z; _other -> notHappyAtAll })

do_pLExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_40 tks) (\x -> case x of {HappyAbsSyn104 z -> happyReturn z; _other -> notHappyAtAll })

do_pListDim tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_41 tks) (\x -> case x of {HappyAbsSyn105 z -> happyReturn z; _other -> notHappyAtAll })

do_pDim tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_42 tks) (\x -> case x of {HappyAbsSyn106 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_43 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp2 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_44 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp3 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_45 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp6 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_46 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp7 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_47 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp8 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_48 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp9 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_49 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp10 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_50 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp11 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_51 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp1 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_52 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp4 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_53 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp5 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_54 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

do_pRExp12 tks = happySomeParser where
 happySomeParser = happyThen (happyParse action_55 tks) (\x -> case x of {HappyAbsSyn107 z -> happyReturn z; _other -> notHappyAtAll })

pProgram toks = do { f <- do_pProgram toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListPGlobl toks = do { f <- do_pListPGlobl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pPGlobl toks = do { f <- do_pPGlobl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBlock toks = do { f <- do_pBlock toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListStm toks = do { f <- do_pListStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBasicType toks = do { f <- do_pBasicType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBoolean toks = do { f <- do_pBoolean toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pPtrVoid toks = do { f <- do_pPtrVoid toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pCompoundType toks = do { f <- do_pCompoundType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBracks toks = do { f <- do_pBracks toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListBracks toks = do { f <- do_pListBracks toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pStm toks = do { f <- do_pStm toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pEBlk toks = do { f <- do_pEBlk toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pDecl toks = do { f <- do_pDecl toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pVarInit toks = do { f <- do_pVarInit toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pArray toks = do { f <- do_pArray toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pVType toks = do { f <- do_pVType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListVType toks = do { f <- do_pListVType toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListArray toks = do { f <- do_pListArray toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pLocal toks = do { f <- do_pLocal toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pAss toks = do { f <- do_pAss toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFunc toks = do { f <- do_pFunc toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncWrite toks = do { f <- do_pFuncWrite toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncRead toks = do { f <- do_pFuncRead toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pWhile toks = do { f <- do_pWhile toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRepeat toks = do { f <- do_pRepeat toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFor toks = do { f <- do_pFor toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pIncrement toks = do { f <- do_pIncrement toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pIf toks = do { f <- do_pIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pElse toks = do { f <- do_pElse toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pElseIf toks = do { f <- do_pElseIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListElseIf toks = do { f <- do_pListElseIf toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pReturn toks = do { f <- do_pReturn toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRValue toks = do { f <- do_pRValue toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pBreak toks = do { f <- do_pBreak toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListRExp toks = do { f <- do_pListRExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pFuncD toks = do { f <- do_pFuncD toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pParamF toks = do { f <- do_pParamF toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListParamF toks = do { f <- do_pListParamF toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pModality toks = do { f <- do_pModality toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pLExp toks = do { f <- do_pLExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pListDim toks = do { f <- do_pListDim toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pDim toks = do { f <- do_pDim toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp toks = do { f <- do_pRExp toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp2 toks = do { f <- do_pRExp2 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp3 toks = do { f <- do_pRExp3 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp6 toks = do { f <- do_pRExp6 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp7 toks = do { f <- do_pRExp7 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp8 toks = do { f <- do_pRExp8 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp9 toks = do { f <- do_pRExp9 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp10 toks = do { f <- do_pRExp10 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp11 toks = do { f <- do_pRExp11 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp1 toks = do { f <- do_pRExp1 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp4 toks = do { f <- do_pRExp4 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp5 toks = do { f <- do_pRExp5 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

pRExp12 toks = do { f <- do_pRExp12 toks; let { (conds,attrs) = f happyEmptyAttrs } in do { sequence_ conds; return (res attrs) }}

happySeq = happyDontSeq

data AttrTree a = HappyAttributes {res :: Result, parsetree :: a, vint :: Integer, vdbl :: Double, vchr :: Char, vstr :: String, vlident :: LIdent, envin :: EnvT, envloc :: EnvT, envout :: EnvT, errs :: [String], posn :: Posn, tipo :: BasicType, code :: [TAC], condTrue :: LabelTac, condFalse :: LabelTac, statein :: State, stateout :: State, addr :: ArgOp, nextLabel :: LabelTac}
happyEmptyAttrs = HappyAttributes {res = error "invalid reference to attribute 'res'", parsetree = error "invalid reference to attribute 'parsetree'", vint = error "invalid reference to attribute 'vint'", vdbl = error "invalid reference to attribute 'vdbl'", vchr = error "invalid reference to attribute 'vchr'", vstr = error "invalid reference to attribute 'vstr'", vlident = error "invalid reference to attribute 'vlident'", envin = error "invalid reference to attribute 'envin'", envloc = error "invalid reference to attribute 'envloc'", envout = error "invalid reference to attribute 'envout'", errs = error "invalid reference to attribute 'errs'", posn = error "invalid reference to attribute 'posn'", tipo = error "invalid reference to attribute 'tipo'", code = error "invalid reference to attribute 'code'", condTrue = error "invalid reference to attribute 'condTrue'", condFalse = error "invalid reference to attribute 'condFalse'", statein = error "invalid reference to attribute 'statein'", stateout = error "invalid reference to attribute 'stateout'", addr = error "invalid reference to attribute 'addr'", nextLabel = error "invalid reference to attribute 'nextLabel'"}

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
