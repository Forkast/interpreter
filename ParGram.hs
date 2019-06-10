{-# OPTIONS_GHC -w #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGram where
import AbsGram
import LexGram
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn 
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 (Ident)
	| HappyAbsSyn5 (Integer)
	| HappyAbsSyn6 (String)
	| HappyAbsSyn7 (Program)
	| HappyAbsSyn8 (FunDef)
	| HappyAbsSyn9 ([FunDef])
	| HappyAbsSyn10 (Arg)
	| HappyAbsSyn11 ([Arg])
	| HappyAbsSyn12 (Block)
	| HappyAbsSyn13 ([Stmt])
	| HappyAbsSyn14 (Stmt)
	| HappyAbsSyn15 (Item)
	| HappyAbsSyn16 ([Item])
	| HappyAbsSyn17 (Type)
	| HappyAbsSyn18 ([Type])
	| HappyAbsSyn19 (Expr)
	| HappyAbsSyn26 ([Expr])
	| HappyAbsSyn27 (AddOp)
	| HappyAbsSyn28 (MulOp)
	| HappyAbsSyn29 (RelOp)

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
 action_128 :: () => Int -> ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyReduce_1,
 happyReduce_2,
 happyReduce_3,
 happyReduce_4,
 happyReduce_5,
 happyReduce_6,
 happyReduce_7,
 happyReduce_8,
 happyReduce_9,
 happyReduce_10,
 happyReduce_11,
 happyReduce_12,
 happyReduce_13,
 happyReduce_14,
 happyReduce_15,
 happyReduce_16,
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
 happyReduce_68,
 happyReduce_69,
 happyReduce_70,
 happyReduce_71,
 happyReduce_72,
 happyReduce_73,
 happyReduce_74,
 happyReduce_75 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,457) ([0,0,2,2626,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,2,2626,0,0,0,0,0,0,0,0,256,0,8192,8192,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,32,0,0,0,0,0,0,0,8192,8192,164,0,0,2,2626,0,0,1024,0,0,0,1024,0,0,0,0,4,0,0,0,4,0,0,0,0,0,16,0,0,0,0,0,0,0,512,0,0,2,2626,0,0,0,0,0,0,512,16896,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8704,24648,31743,0,0,8480,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,8192,0,0,0,0,0,0,0,0,8328,0,0,0,36864,0,0,0,5120,7552,0,0,0,0,16384,0,0,16384,0,0,0,512,36864,1796,0,8704,8200,28909,0,0,2,1168,7,0,0,0,0,0,0,4,0,0,0,0,0,0,0,2,0,0,0,32,42016,0,0,33312,36868,1796,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,130,1168,7,0,0,0,0,0,0,4,0,0,8704,8,28745,0,0,0,0,0,0,1024,0,0,0,33312,36864,1796,0,0,0,0,0,0,2,0,0,0,64,0,0,0,512,0,0,0,0,0,0,0,8192,130,1168,7,0,2082,18688,112,0,0,0,0,0,8704,8,28745,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2082,18688,112,0,0,0,0,0,0,0,0,0,8192,130,1168,7,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,130,1168,7,0,32,2,0,0,16384,0,0,0,0,64,0,0,0,1024,0,0,0,16384,0,0,0,33312,36864,1796,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,8192,130,1168,7,0,1024,0,0,0,1024,0,0,0,0,0,0,0,32768,520,0,0,0,0,0,0,0,36864,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,512,16896,10,0,0,0,0,0,0,4,0,0,0,18466,65376,115,0,1024,0,0,0,8704,24648,29695,0,0,0,0,0,0,2082,18688,112,0,0,0,0,0,0,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8704,24648,29695,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","Ident","Integer","String","Program","FunDef","ListFunDef","Arg","ListArg","Block","ListStmt","Stmt","Item","ListItem","Type","ListType","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","ListExpr","AddOp","MulOp","RelOp","'!'","'!='","'%'","'&&'","'('","')'","'*'","'+'","'++'","','","'-'","'--'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'bool'","'debug'","'else'","'false'","'if'","'int'","'lambda('","'return'","'string'","'true'","'void'","'while'","'{'","'||'","'}'","L_ident","L_integ","L_quoted","%eof"]
        bit_start = st * 68
        bit_end = (st + 1) * 68
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..67]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (34) = happyShift action_7
action_0 (50) = happyShift action_8
action_0 (55) = happyShift action_9
action_0 (58) = happyShift action_10
action_0 (60) = happyShift action_11
action_0 (7) = happyGoto action_3
action_0 (8) = happyGoto action_4
action_0 (9) = happyGoto action_5
action_0 (17) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (65) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (68) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (34) = happyShift action_7
action_4 (50) = happyShift action_8
action_4 (55) = happyShift action_9
action_4 (58) = happyShift action_10
action_4 (60) = happyShift action_11
action_4 (8) = happyGoto action_4
action_4 (9) = happyGoto action_14
action_4 (17) = happyGoto action_6
action_4 _ = happyReduce_6

action_5 _ = happyReduce_4

action_6 (65) = happyShift action_2
action_6 (4) = happyGoto action_13
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (34) = happyShift action_7
action_7 (50) = happyShift action_8
action_7 (55) = happyShift action_9
action_7 (58) = happyShift action_10
action_7 (60) = happyShift action_11
action_7 (17) = happyGoto action_12
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_35

action_9 _ = happyReduce_33

action_10 _ = happyReduce_34

action_11 _ = happyReduce_36

action_12 (39) = happyShift action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (34) = happyShift action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_7

action_15 (34) = happyShift action_7
action_15 (50) = happyShift action_8
action_15 (55) = happyShift action_9
action_15 (58) = happyShift action_10
action_15 (60) = happyShift action_11
action_15 (10) = happyGoto action_19
action_15 (11) = happyGoto action_20
action_15 (17) = happyGoto action_21
action_15 _ = happyReduce_9

action_16 (34) = happyShift action_7
action_16 (50) = happyShift action_8
action_16 (55) = happyShift action_9
action_16 (58) = happyShift action_10
action_16 (60) = happyShift action_11
action_16 (17) = happyGoto action_17
action_16 (18) = happyGoto action_18
action_16 _ = happyReduce_38

action_17 (39) = happyShift action_26
action_17 _ = happyReduce_39

action_18 (35) = happyShift action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (39) = happyShift action_24
action_19 _ = happyReduce_10

action_20 (35) = happyShift action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (65) = happyShift action_2
action_21 (4) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_8

action_23 (62) = happyShift action_30
action_23 (12) = happyGoto action_29
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (34) = happyShift action_7
action_24 (50) = happyShift action_8
action_24 (55) = happyShift action_9
action_24 (58) = happyShift action_10
action_24 (60) = happyShift action_11
action_24 (10) = happyGoto action_19
action_24 (11) = happyGoto action_28
action_24 (17) = happyGoto action_21
action_24 _ = happyReduce_9

action_25 _ = happyReduce_37

action_26 (34) = happyShift action_7
action_26 (50) = happyShift action_8
action_26 (55) = happyShift action_9
action_26 (58) = happyShift action_10
action_26 (60) = happyShift action_11
action_26 (17) = happyGoto action_17
action_26 (18) = happyGoto action_27
action_26 _ = happyReduce_38

action_27 _ = happyReduce_40

action_28 _ = happyReduce_11

action_29 _ = happyReduce_5

action_30 (13) = happyGoto action_31
action_30 _ = happyReduce_13

action_31 (30) = happyShift action_46
action_31 (34) = happyShift action_47
action_31 (40) = happyShift action_48
action_31 (43) = happyShift action_49
action_31 (50) = happyShift action_8
action_31 (51) = happyShift action_50
action_31 (53) = happyShift action_51
action_31 (54) = happyShift action_52
action_31 (55) = happyShift action_9
action_31 (56) = happyShift action_53
action_31 (57) = happyShift action_54
action_31 (58) = happyShift action_10
action_31 (59) = happyShift action_55
action_31 (60) = happyShift action_11
action_31 (61) = happyShift action_56
action_31 (62) = happyShift action_30
action_31 (64) = happyShift action_57
action_31 (65) = happyShift action_2
action_31 (66) = happyShift action_58
action_31 (67) = happyShift action_59
action_31 (4) = happyGoto action_32
action_31 (5) = happyGoto action_33
action_31 (6) = happyGoto action_34
action_31 (8) = happyGoto action_35
action_31 (12) = happyGoto action_36
action_31 (14) = happyGoto action_37
action_31 (17) = happyGoto action_38
action_31 (19) = happyGoto action_39
action_31 (20) = happyGoto action_40
action_31 (21) = happyGoto action_41
action_31 (22) = happyGoto action_42
action_31 (23) = happyGoto action_43
action_31 (24) = happyGoto action_44
action_31 (25) = happyGoto action_45
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (38) = happyShift action_92
action_32 (41) = happyShift action_93
action_32 (46) = happyShift action_94
action_32 _ = happyReduce_42

action_33 _ = happyReduce_43

action_34 _ = happyReduce_47

action_35 _ = happyReduce_15

action_36 _ = happyReduce_17

action_37 _ = happyReduce_14

action_38 (65) = happyShift action_2
action_38 (4) = happyGoto action_89
action_38 (15) = happyGoto action_90
action_38 (16) = happyGoto action_91
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (34) = happyShift action_88
action_39 _ = happyReduce_51

action_40 _ = happyReduce_53

action_41 (32) = happyShift action_85
action_41 (36) = happyShift action_86
action_41 (42) = happyShift action_87
action_41 (28) = happyGoto action_84
action_41 _ = happyReduce_55

action_42 (37) = happyShift action_82
action_42 (40) = happyShift action_83
action_42 (27) = happyGoto action_81
action_42 _ = happyReduce_57

action_43 (31) = happyShift action_74
action_43 (33) = happyShift action_75
action_43 (44) = happyShift action_76
action_43 (45) = happyShift action_77
action_43 (47) = happyShift action_78
action_43 (48) = happyShift action_79
action_43 (49) = happyShift action_80
action_43 (29) = happyGoto action_73
action_43 _ = happyReduce_59

action_44 (63) = happyShift action_72
action_44 _ = happyReduce_61

action_45 (43) = happyShift action_71
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (34) = happyShift action_63
action_46 (53) = happyShift action_51
action_46 (56) = happyShift action_53
action_46 (59) = happyShift action_55
action_46 (65) = happyShift action_2
action_46 (66) = happyShift action_58
action_46 (67) = happyShift action_59
action_46 (4) = happyGoto action_61
action_46 (5) = happyGoto action_33
action_46 (6) = happyGoto action_34
action_46 (19) = happyGoto action_70
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (30) = happyShift action_46
action_47 (34) = happyShift action_47
action_47 (40) = happyShift action_48
action_47 (50) = happyShift action_8
action_47 (53) = happyShift action_51
action_47 (55) = happyShift action_9
action_47 (56) = happyShift action_53
action_47 (58) = happyShift action_10
action_47 (59) = happyShift action_55
action_47 (60) = happyShift action_11
action_47 (65) = happyShift action_2
action_47 (66) = happyShift action_58
action_47 (67) = happyShift action_59
action_47 (4) = happyGoto action_61
action_47 (5) = happyGoto action_33
action_47 (6) = happyGoto action_34
action_47 (17) = happyGoto action_12
action_47 (19) = happyGoto action_39
action_47 (20) = happyGoto action_40
action_47 (21) = happyGoto action_41
action_47 (22) = happyGoto action_42
action_47 (23) = happyGoto action_43
action_47 (24) = happyGoto action_44
action_47 (25) = happyGoto action_69
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (34) = happyShift action_63
action_48 (53) = happyShift action_51
action_48 (56) = happyShift action_53
action_48 (59) = happyShift action_55
action_48 (65) = happyShift action_2
action_48 (66) = happyShift action_58
action_48 (67) = happyShift action_59
action_48 (4) = happyGoto action_61
action_48 (5) = happyGoto action_33
action_48 (6) = happyGoto action_34
action_48 (19) = happyGoto action_68
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_16

action_50 (43) = happyShift action_67
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_45

action_52 (34) = happyShift action_66
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (34) = happyShift action_7
action_53 (50) = happyShift action_8
action_53 (55) = happyShift action_9
action_53 (58) = happyShift action_10
action_53 (60) = happyShift action_11
action_53 (17) = happyGoto action_65
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (30) = happyShift action_46
action_54 (34) = happyShift action_63
action_54 (40) = happyShift action_48
action_54 (43) = happyShift action_64
action_54 (53) = happyShift action_51
action_54 (56) = happyShift action_53
action_54 (59) = happyShift action_55
action_54 (65) = happyShift action_2
action_54 (66) = happyShift action_58
action_54 (67) = happyShift action_59
action_54 (4) = happyGoto action_61
action_54 (5) = happyGoto action_33
action_54 (6) = happyGoto action_34
action_54 (19) = happyGoto action_39
action_54 (20) = happyGoto action_40
action_54 (21) = happyGoto action_41
action_54 (22) = happyGoto action_42
action_54 (23) = happyGoto action_43
action_54 (24) = happyGoto action_44
action_54 (25) = happyGoto action_62
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_44

action_56 (34) = happyShift action_60
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_12

action_58 _ = happyReduce_2

action_59 _ = happyReduce_3

action_60 (30) = happyShift action_46
action_60 (34) = happyShift action_63
action_60 (40) = happyShift action_48
action_60 (53) = happyShift action_51
action_60 (56) = happyShift action_53
action_60 (59) = happyShift action_55
action_60 (65) = happyShift action_2
action_60 (66) = happyShift action_58
action_60 (67) = happyShift action_59
action_60 (4) = happyGoto action_61
action_60 (5) = happyGoto action_33
action_60 (6) = happyGoto action_34
action_60 (19) = happyGoto action_39
action_60 (20) = happyGoto action_40
action_60 (21) = happyGoto action_41
action_60 (22) = happyGoto action_42
action_60 (23) = happyGoto action_43
action_60 (24) = happyGoto action_44
action_60 (25) = happyGoto action_112
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_42

action_62 (43) = happyShift action_111
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (30) = happyShift action_46
action_63 (34) = happyShift action_63
action_63 (40) = happyShift action_48
action_63 (53) = happyShift action_51
action_63 (56) = happyShift action_53
action_63 (59) = happyShift action_55
action_63 (65) = happyShift action_2
action_63 (66) = happyShift action_58
action_63 (67) = happyShift action_59
action_63 (4) = happyGoto action_61
action_63 (5) = happyGoto action_33
action_63 (6) = happyGoto action_34
action_63 (19) = happyGoto action_39
action_63 (20) = happyGoto action_40
action_63 (21) = happyGoto action_41
action_63 (22) = happyGoto action_42
action_63 (23) = happyGoto action_43
action_63 (24) = happyGoto action_44
action_63 (25) = happyGoto action_69
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_23

action_65 (39) = happyShift action_110
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (30) = happyShift action_46
action_66 (34) = happyShift action_63
action_66 (40) = happyShift action_48
action_66 (53) = happyShift action_51
action_66 (56) = happyShift action_53
action_66 (59) = happyShift action_55
action_66 (65) = happyShift action_2
action_66 (66) = happyShift action_58
action_66 (67) = happyShift action_59
action_66 (4) = happyGoto action_61
action_66 (5) = happyGoto action_33
action_66 (6) = happyGoto action_34
action_66 (19) = happyGoto action_39
action_66 (20) = happyGoto action_40
action_66 (21) = happyGoto action_41
action_66 (22) = happyGoto action_42
action_66 (23) = happyGoto action_43
action_66 (24) = happyGoto action_44
action_66 (25) = happyGoto action_109
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_27

action_68 (34) = happyShift action_88
action_68 _ = happyReduce_49

action_69 (35) = happyShift action_108
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (34) = happyShift action_88
action_70 _ = happyReduce_50

action_71 _ = happyReduce_28

action_72 (30) = happyShift action_46
action_72 (34) = happyShift action_63
action_72 (40) = happyShift action_48
action_72 (53) = happyShift action_51
action_72 (56) = happyShift action_53
action_72 (59) = happyShift action_55
action_72 (65) = happyShift action_2
action_72 (66) = happyShift action_58
action_72 (67) = happyShift action_59
action_72 (4) = happyGoto action_61
action_72 (5) = happyGoto action_33
action_72 (6) = happyGoto action_34
action_72 (19) = happyGoto action_39
action_72 (20) = happyGoto action_40
action_72 (21) = happyGoto action_41
action_72 (22) = happyGoto action_42
action_72 (23) = happyGoto action_43
action_72 (24) = happyGoto action_44
action_72 (25) = happyGoto action_107
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (30) = happyShift action_46
action_73 (34) = happyShift action_63
action_73 (40) = happyShift action_48
action_73 (53) = happyShift action_51
action_73 (56) = happyShift action_53
action_73 (59) = happyShift action_55
action_73 (65) = happyShift action_2
action_73 (66) = happyShift action_58
action_73 (67) = happyShift action_59
action_73 (4) = happyGoto action_61
action_73 (5) = happyGoto action_33
action_73 (6) = happyGoto action_34
action_73 (19) = happyGoto action_39
action_73 (20) = happyGoto action_40
action_73 (21) = happyGoto action_41
action_73 (22) = happyGoto action_106
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_75

action_75 (30) = happyShift action_46
action_75 (34) = happyShift action_63
action_75 (40) = happyShift action_48
action_75 (53) = happyShift action_51
action_75 (56) = happyShift action_53
action_75 (59) = happyShift action_55
action_75 (65) = happyShift action_2
action_75 (66) = happyShift action_58
action_75 (67) = happyShift action_59
action_75 (4) = happyGoto action_61
action_75 (5) = happyGoto action_33
action_75 (6) = happyGoto action_34
action_75 (19) = happyGoto action_39
action_75 (20) = happyGoto action_40
action_75 (21) = happyGoto action_41
action_75 (22) = happyGoto action_42
action_75 (23) = happyGoto action_43
action_75 (24) = happyGoto action_105
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_70

action_77 _ = happyReduce_71

action_78 _ = happyReduce_74

action_79 _ = happyReduce_72

action_80 _ = happyReduce_73

action_81 (30) = happyShift action_46
action_81 (34) = happyShift action_63
action_81 (40) = happyShift action_48
action_81 (53) = happyShift action_51
action_81 (56) = happyShift action_53
action_81 (59) = happyShift action_55
action_81 (65) = happyShift action_2
action_81 (66) = happyShift action_58
action_81 (67) = happyShift action_59
action_81 (4) = happyGoto action_61
action_81 (5) = happyGoto action_33
action_81 (6) = happyGoto action_34
action_81 (19) = happyGoto action_39
action_81 (20) = happyGoto action_40
action_81 (21) = happyGoto action_104
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_65

action_83 _ = happyReduce_66

action_84 (30) = happyShift action_46
action_84 (34) = happyShift action_63
action_84 (40) = happyShift action_48
action_84 (53) = happyShift action_51
action_84 (56) = happyShift action_53
action_84 (59) = happyShift action_55
action_84 (65) = happyShift action_2
action_84 (66) = happyShift action_58
action_84 (67) = happyShift action_59
action_84 (4) = happyGoto action_61
action_84 (5) = happyGoto action_33
action_84 (6) = happyGoto action_34
action_84 (19) = happyGoto action_39
action_84 (20) = happyGoto action_103
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_69

action_86 _ = happyReduce_67

action_87 _ = happyReduce_68

action_88 (30) = happyShift action_46
action_88 (34) = happyShift action_63
action_88 (40) = happyShift action_48
action_88 (53) = happyShift action_51
action_88 (56) = happyShift action_53
action_88 (59) = happyShift action_55
action_88 (65) = happyShift action_2
action_88 (66) = happyShift action_58
action_88 (67) = happyShift action_59
action_88 (4) = happyGoto action_61
action_88 (5) = happyGoto action_33
action_88 (6) = happyGoto action_34
action_88 (19) = happyGoto action_39
action_88 (20) = happyGoto action_40
action_88 (21) = happyGoto action_41
action_88 (22) = happyGoto action_42
action_88 (23) = happyGoto action_43
action_88 (24) = happyGoto action_44
action_88 (25) = happyGoto action_101
action_88 (26) = happyGoto action_102
action_88 _ = happyReduce_62

action_89 (34) = happyShift action_15
action_89 (46) = happyShift action_100
action_89 _ = happyReduce_29

action_90 (39) = happyShift action_99
action_90 _ = happyReduce_31

action_91 (43) = happyShift action_98
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (43) = happyShift action_97
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (43) = happyShift action_96
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (30) = happyShift action_46
action_94 (34) = happyShift action_63
action_94 (40) = happyShift action_48
action_94 (53) = happyShift action_51
action_94 (56) = happyShift action_53
action_94 (59) = happyShift action_55
action_94 (65) = happyShift action_2
action_94 (66) = happyShift action_58
action_94 (67) = happyShift action_59
action_94 (4) = happyGoto action_61
action_94 (5) = happyGoto action_33
action_94 (6) = happyGoto action_34
action_94 (19) = happyGoto action_39
action_94 (20) = happyGoto action_40
action_94 (21) = happyGoto action_41
action_94 (22) = happyGoto action_42
action_94 (23) = happyGoto action_43
action_94 (24) = happyGoto action_44
action_94 (25) = happyGoto action_95
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (43) = happyShift action_121
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_21

action_97 _ = happyReduce_20

action_98 _ = happyReduce_18

action_99 (65) = happyShift action_2
action_99 (4) = happyGoto action_119
action_99 (15) = happyGoto action_90
action_99 (16) = happyGoto action_120
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (30) = happyShift action_46
action_100 (34) = happyShift action_63
action_100 (40) = happyShift action_48
action_100 (53) = happyShift action_51
action_100 (56) = happyShift action_53
action_100 (59) = happyShift action_55
action_100 (65) = happyShift action_2
action_100 (66) = happyShift action_58
action_100 (67) = happyShift action_59
action_100 (4) = happyGoto action_61
action_100 (5) = happyGoto action_33
action_100 (6) = happyGoto action_34
action_100 (19) = happyGoto action_39
action_100 (20) = happyGoto action_40
action_100 (21) = happyGoto action_41
action_100 (22) = happyGoto action_42
action_100 (23) = happyGoto action_43
action_100 (24) = happyGoto action_44
action_100 (25) = happyGoto action_118
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (39) = happyShift action_117
action_101 _ = happyReduce_63

action_102 (35) = happyShift action_116
action_102 _ = happyFail (happyExpListPerState 102)

action_103 _ = happyReduce_52

action_104 (32) = happyShift action_85
action_104 (36) = happyShift action_86
action_104 (42) = happyShift action_87
action_104 (28) = happyGoto action_84
action_104 _ = happyReduce_54

action_105 _ = happyReduce_58

action_106 (37) = happyShift action_82
action_106 (40) = happyShift action_83
action_106 (27) = happyGoto action_81
action_106 _ = happyReduce_56

action_107 _ = happyReduce_60

action_108 _ = happyReduce_48

action_109 (35) = happyShift action_115
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (34) = happyShift action_7
action_110 (50) = happyShift action_8
action_110 (55) = happyShift action_9
action_110 (58) = happyShift action_10
action_110 (60) = happyShift action_11
action_110 (10) = happyGoto action_19
action_110 (11) = happyGoto action_114
action_110 (17) = happyGoto action_21
action_110 _ = happyReduce_9

action_111 _ = happyReduce_22

action_112 (35) = happyShift action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (30) = happyShift action_46
action_113 (34) = happyShift action_47
action_113 (40) = happyShift action_48
action_113 (43) = happyShift action_49
action_113 (50) = happyShift action_8
action_113 (51) = happyShift action_50
action_113 (53) = happyShift action_51
action_113 (54) = happyShift action_52
action_113 (55) = happyShift action_9
action_113 (56) = happyShift action_53
action_113 (57) = happyShift action_54
action_113 (58) = happyShift action_10
action_113 (59) = happyShift action_55
action_113 (60) = happyShift action_11
action_113 (61) = happyShift action_56
action_113 (62) = happyShift action_30
action_113 (65) = happyShift action_2
action_113 (66) = happyShift action_58
action_113 (67) = happyShift action_59
action_113 (4) = happyGoto action_32
action_113 (5) = happyGoto action_33
action_113 (6) = happyGoto action_34
action_113 (8) = happyGoto action_35
action_113 (12) = happyGoto action_36
action_113 (14) = happyGoto action_125
action_113 (17) = happyGoto action_38
action_113 (19) = happyGoto action_39
action_113 (20) = happyGoto action_40
action_113 (21) = happyGoto action_41
action_113 (22) = happyGoto action_42
action_113 (23) = happyGoto action_43
action_113 (24) = happyGoto action_44
action_113 (25) = happyGoto action_45
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (35) = happyShift action_124
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (30) = happyShift action_46
action_115 (34) = happyShift action_47
action_115 (40) = happyShift action_48
action_115 (43) = happyShift action_49
action_115 (50) = happyShift action_8
action_115 (51) = happyShift action_50
action_115 (53) = happyShift action_51
action_115 (54) = happyShift action_52
action_115 (55) = happyShift action_9
action_115 (56) = happyShift action_53
action_115 (57) = happyShift action_54
action_115 (58) = happyShift action_10
action_115 (59) = happyShift action_55
action_115 (60) = happyShift action_11
action_115 (61) = happyShift action_56
action_115 (62) = happyShift action_30
action_115 (65) = happyShift action_2
action_115 (66) = happyShift action_58
action_115 (67) = happyShift action_59
action_115 (4) = happyGoto action_32
action_115 (5) = happyGoto action_33
action_115 (6) = happyGoto action_34
action_115 (8) = happyGoto action_35
action_115 (12) = happyGoto action_36
action_115 (14) = happyGoto action_123
action_115 (17) = happyGoto action_38
action_115 (19) = happyGoto action_39
action_115 (20) = happyGoto action_40
action_115 (21) = happyGoto action_41
action_115 (22) = happyGoto action_42
action_115 (23) = happyGoto action_43
action_115 (24) = happyGoto action_44
action_115 (25) = happyGoto action_45
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_46

action_117 (30) = happyShift action_46
action_117 (34) = happyShift action_63
action_117 (40) = happyShift action_48
action_117 (53) = happyShift action_51
action_117 (56) = happyShift action_53
action_117 (59) = happyShift action_55
action_117 (65) = happyShift action_2
action_117 (66) = happyShift action_58
action_117 (67) = happyShift action_59
action_117 (4) = happyGoto action_61
action_117 (5) = happyGoto action_33
action_117 (6) = happyGoto action_34
action_117 (19) = happyGoto action_39
action_117 (20) = happyGoto action_40
action_117 (21) = happyGoto action_41
action_117 (22) = happyGoto action_42
action_117 (23) = happyGoto action_43
action_117 (24) = happyGoto action_44
action_117 (25) = happyGoto action_101
action_117 (26) = happyGoto action_122
action_117 _ = happyReduce_62

action_118 _ = happyReduce_30

action_119 (46) = happyShift action_100
action_119 _ = happyReduce_29

action_120 _ = happyReduce_32

action_121 _ = happyReduce_19

action_122 _ = happyReduce_64

action_123 (52) = happyShift action_127
action_123 _ = happyReduce_24

action_124 (62) = happyShift action_30
action_124 (12) = happyGoto action_126
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_26

action_126 _ = happyReduce_41

action_127 (30) = happyShift action_46
action_127 (34) = happyShift action_47
action_127 (40) = happyShift action_48
action_127 (43) = happyShift action_49
action_127 (50) = happyShift action_8
action_127 (51) = happyShift action_50
action_127 (53) = happyShift action_51
action_127 (54) = happyShift action_52
action_127 (55) = happyShift action_9
action_127 (56) = happyShift action_53
action_127 (57) = happyShift action_54
action_127 (58) = happyShift action_10
action_127 (59) = happyShift action_55
action_127 (60) = happyShift action_11
action_127 (61) = happyShift action_56
action_127 (62) = happyShift action_30
action_127 (65) = happyShift action_2
action_127 (66) = happyShift action_58
action_127 (67) = happyShift action_59
action_127 (4) = happyGoto action_32
action_127 (5) = happyGoto action_33
action_127 (6) = happyGoto action_34
action_127 (8) = happyGoto action_35
action_127 (12) = happyGoto action_36
action_127 (14) = happyGoto action_128
action_127 (17) = happyGoto action_38
action_127 (19) = happyGoto action_39
action_127 (20) = happyGoto action_40
action_127 (21) = happyGoto action_41
action_127 (22) = happyGoto action_42
action_127 (23) = happyGoto action_43
action_127 (24) = happyGoto action_44
action_127 (25) = happyGoto action_45
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (PT _ (TV happy_var_1)))
	 =  HappyAbsSyn4
		 (Ident happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyTerminal (PT _ (TI happy_var_1)))
	 =  HappyAbsSyn5
		 ((read ( happy_var_1)) :: Integer
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyTerminal (PT _ (TL happy_var_1)))
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  7 happyReduction_4
happyReduction_4 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (AbsGram.Program happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happyReduce 6 8 happyReduction_5
happyReduction_5 ((HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (AbsGram.FnDef happy_var_1 happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  9 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ((:[]) happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  9 happyReduction_7
happyReduction_7 (HappyAbsSyn9  happy_var_2)
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ((:) happy_var_1 happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  10 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.Arg happy_var_1 happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_0  11 happyReduction_9
happyReduction_9  =  HappyAbsSyn11
		 ([]
	)

happyReduce_10 = happySpecReduce_1  11 happyReduction_10
happyReduction_10 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ((:[]) happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  11 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  12 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (AbsGram.Block (reverse happy_var_2)
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_0  13 happyReduction_13
happyReduction_13  =  HappyAbsSyn13
		 ([]
	)

happyReduce_14 = happySpecReduce_2  13 happyReduction_14
happyReduction_14 (HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  14 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.FDef happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  14 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn14
		 (AbsGram.Empty
	)

happyReduce_17 = happySpecReduce_1  14 happyReduction_17
happyReduction_17 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.BStmt happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  14 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.Decl happy_var_1 happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 14 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AbsGram.Ass happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  14 happyReduction_20
happyReduction_20 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.Incr happy_var_1
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  14 happyReduction_21
happyReduction_21 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.Decr happy_var_1
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  14 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (AbsGram.Ret happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  14 happyReduction_23
happyReduction_23 _
	_
	 =  HappyAbsSyn14
		 (AbsGram.VRet
	)

happyReduce_24 = happyReduce 5 14 happyReduction_24
happyReduction_24 ((HappyAbsSyn14  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AbsGram.Cond happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 7 14 happyReduction_25
happyReduction_25 ((HappyAbsSyn14  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AbsGram.CondElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 5 14 happyReduction_26
happyReduction_26 ((HappyAbsSyn14  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (AbsGram.While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_2  14 happyReduction_27
happyReduction_27 _
	_
	 =  HappyAbsSyn14
		 (AbsGram.Debug
	)

happyReduce_28 = happySpecReduce_2  14 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn14
		 (AbsGram.SExp happy_var_1
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  15 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.NoInit happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  15 happyReduction_30
happyReduction_30 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.Init happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  16 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 ((:[]) happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  16 happyReduction_32
happyReduction_32 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  17 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn17
		 (AbsGram.Int
	)

happyReduce_34 = happySpecReduce_1  17 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn17
		 (AbsGram.Str
	)

happyReduce_35 = happySpecReduce_1  17 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn17
		 (AbsGram.Bool
	)

happyReduce_36 = happySpecReduce_1  17 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn17
		 (AbsGram.Void
	)

happyReduce_37 = happyReduce 5 17 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AbsGram.Fun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_0  18 happyReduction_38
happyReduction_38  =  HappyAbsSyn18
		 ([]
	)

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn18
		 ((:[]) happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  18 happyReduction_40
happyReduction_40 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn18
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happyReduce 6 19 happyReduction_41
happyReduction_41 ((HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AbsGram.ELam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_1  19 happyReduction_42
happyReduction_42 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EVar happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  19 happyReduction_43
happyReduction_43 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.ELitInt happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn19
		 (AbsGram.ELitTrue
	)

happyReduce_45 = happySpecReduce_1  19 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn19
		 (AbsGram.ELitFalse
	)

happyReduce_46 = happyReduce 4 19 happyReduction_46
happyReduction_46 (_ `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AbsGram.EApp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_47 = happySpecReduce_1  19 happyReduction_47
happyReduction_47 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EString happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  19 happyReduction_48
happyReduction_48 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_2  20 happyReduction_49
happyReduction_49 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (AbsGram.Neg happy_var_2
	)
happyReduction_49 _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  20 happyReduction_50
happyReduction_50 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (AbsGram.Not happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  20 happyReduction_51
happyReduction_51 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  21 happyReduction_52
happyReduction_52 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn28  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EMul happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  21 happyReduction_53
happyReduction_53 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  22 happyReduction_54
happyReduction_54 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn27  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EAdd happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  22 happyReduction_55
happyReduction_55 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  23 happyReduction_56
happyReduction_56 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn29  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.ERel happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  23 happyReduction_57
happyReduction_57 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  24 happyReduction_58
happyReduction_58 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  24 happyReduction_59
happyReduction_59 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  25 happyReduction_60
happyReduction_60 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_1  25 happyReduction_61
happyReduction_61 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_0  26 happyReduction_62
happyReduction_62  =  HappyAbsSyn26
		 ([]
	)

happyReduce_63 = happySpecReduce_1  26 happyReduction_63
happyReduction_63 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn26
		 ((:[]) happy_var_1
	)
happyReduction_63 _  = notHappyAtAll 

happyReduce_64 = happySpecReduce_3  26 happyReduction_64
happyReduction_64 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn26
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_64 _ _ _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_1  27 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn27
		 (AbsGram.Plus
	)

happyReduce_66 = happySpecReduce_1  27 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn27
		 (AbsGram.Minus
	)

happyReduce_67 = happySpecReduce_1  28 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn28
		 (AbsGram.Times
	)

happyReduce_68 = happySpecReduce_1  28 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn28
		 (AbsGram.Div
	)

happyReduce_69 = happySpecReduce_1  28 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn28
		 (AbsGram.Mod
	)

happyReduce_70 = happySpecReduce_1  29 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn29
		 (AbsGram.LTH
	)

happyReduce_71 = happySpecReduce_1  29 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn29
		 (AbsGram.LE
	)

happyReduce_72 = happySpecReduce_1  29 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn29
		 (AbsGram.GTH
	)

happyReduce_73 = happySpecReduce_1  29 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn29
		 (AbsGram.GE
	)

happyReduce_74 = happySpecReduce_1  29 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn29
		 (AbsGram.EQU
	)

happyReduce_75 = happySpecReduce_1  29 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn29
		 (AbsGram.NE
	)

happyNewToken action sts stk [] =
	action 68 68 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 30;
	PT _ (TS _ 2) -> cont 31;
	PT _ (TS _ 3) -> cont 32;
	PT _ (TS _ 4) -> cont 33;
	PT _ (TS _ 5) -> cont 34;
	PT _ (TS _ 6) -> cont 35;
	PT _ (TS _ 7) -> cont 36;
	PT _ (TS _ 8) -> cont 37;
	PT _ (TS _ 9) -> cont 38;
	PT _ (TS _ 10) -> cont 39;
	PT _ (TS _ 11) -> cont 40;
	PT _ (TS _ 12) -> cont 41;
	PT _ (TS _ 13) -> cont 42;
	PT _ (TS _ 14) -> cont 43;
	PT _ (TS _ 15) -> cont 44;
	PT _ (TS _ 16) -> cont 45;
	PT _ (TS _ 17) -> cont 46;
	PT _ (TS _ 18) -> cont 47;
	PT _ (TS _ 19) -> cont 48;
	PT _ (TS _ 20) -> cont 49;
	PT _ (TS _ 21) -> cont 50;
	PT _ (TS _ 22) -> cont 51;
	PT _ (TS _ 23) -> cont 52;
	PT _ (TS _ 24) -> cont 53;
	PT _ (TS _ 25) -> cont 54;
	PT _ (TS _ 26) -> cont 55;
	PT _ (TS _ 27) -> cont 56;
	PT _ (TS _ 28) -> cont 57;
	PT _ (TS _ 29) -> cont 58;
	PT _ (TS _ 30) -> cont 59;
	PT _ (TS _ 31) -> cont 60;
	PT _ (TS _ 32) -> cont 61;
	PT _ (TS _ 33) -> cont 62;
	PT _ (TS _ 34) -> cont 63;
	PT _ (TS _ 35) -> cont 64;
	PT _ (TV happy_dollar_dollar) -> cont 65;
	PT _ (TI happy_dollar_dollar) -> cont 66;
	PT _ (TL happy_dollar_dollar) -> cont 67;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 68 tk tks = happyError' (tks, explist)
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
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn7 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

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

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
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

{-# LINE 267 "templates/GenericTemplate.hs" #-}
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

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
