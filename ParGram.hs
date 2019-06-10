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
 action_128,
 action_129 :: () => Int -> ({-HappyReduction (Err) = -}
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
 happyReduce_75,
 happyReduce_76 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,444) ([0,0,4,5252,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,64,18496,1,0,0,0,0,0,16384,0,32768,0,0,32,42016,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,8,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,4,5252,0,0,128,36992,2,0,1024,2,0,0,0,4,0,0,0,2048,0,0,0,4096,0,0,0,16384,0,32768,0,0,0,0,0,0,0,0,64,0,32768,32768,656,0,0,0,0,0,0,512,16896,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,2308,32748,15,0,18432,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,16,0,1024,0,0,0,0,0,0,0,0,4162,0,0,0,36864,0,0,0,9216,15104,0,0,0,0,0,1,0,0,2,0,0,8192,0,28745,0,8192,260,7588,14,0,128,9216,449,0,0,0,0,0,0,1024,0,0,0,0,0,0,0,2048,0,0,0,0,1,1313,0,0,18465,18688,112,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,520,4672,28,0,0,0,0,0,0,64,0,0,8192,260,2336,14,0,0,0,0,0,1024,2,0,0,4096,130,1168,7,0,0,0,0,0,2048,0,0,0,0,2,0,0,0,32,0,0,0,0,0,0,0,33792,32,49444,1,32768,1040,9344,56,0,0,0,0,0,16896,16,57490,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4224,32772,14372,0,0,0,0,0,0,0,0,0,0,2112,16386,7186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33792,32,49444,1,0,16,1,0,0,16384,0,0,0,0,128,0,0,0,4096,0,0,0,0,2,0,0,8448,8,28745,0,0,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,2112,16386,7186,0,0,32,0,0,0,64,0,0,0,0,0,0,0,4096,130,0,0,0,0,0,0,0,36864,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,0,8192,8192,164,0,0,0,0,0,0,256,0,0,0,4224,45092,14847,0,0,4,0,0,0,36930,65216,231,0,0,0,0,0,2048,65,33352,3,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,8192,2308,32748,14,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","Ident","Integer","String","Program","FunDef","ListFunDef","Arg","ListArg","Block","ListStmt","Stmt","Item","ListItem","Type","ListType","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","ListExpr","AddOp","MulOp","RelOp","'!'","'!='","'%'","'&'","'&&'","'('","')'","'*'","'+'","'++'","','","'-'","'--'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'bool'","'debug'","'else'","'false'","'if'","'int'","'lambda('","'return'","'string'","'true'","'void'","'while'","'{'","'||'","'}'","L_ident","L_integ","L_quoted","%eof"]
        bit_start = st * 69
        bit_end = (st + 1) * 69
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..68]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (35) = happyShift action_7
action_0 (51) = happyShift action_8
action_0 (56) = happyShift action_9
action_0 (59) = happyShift action_10
action_0 (61) = happyShift action_11
action_0 (7) = happyGoto action_3
action_0 (8) = happyGoto action_4
action_0 (9) = happyGoto action_5
action_0 (17) = happyGoto action_6
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (66) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (69) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (35) = happyShift action_7
action_4 (51) = happyShift action_8
action_4 (56) = happyShift action_9
action_4 (59) = happyShift action_10
action_4 (61) = happyShift action_11
action_4 (8) = happyGoto action_4
action_4 (9) = happyGoto action_15
action_4 (17) = happyGoto action_6
action_4 _ = happyReduce_6

action_5 _ = happyReduce_4

action_6 (33) = happyShift action_14
action_6 (66) = happyShift action_2
action_6 (4) = happyGoto action_13
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (35) = happyShift action_7
action_7 (51) = happyShift action_8
action_7 (56) = happyShift action_9
action_7 (59) = happyShift action_10
action_7 (61) = happyShift action_11
action_7 (17) = happyGoto action_12
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_35

action_9 _ = happyReduce_33

action_10 _ = happyReduce_34

action_11 _ = happyReduce_36

action_12 (33) = happyShift action_14
action_12 (40) = happyShift action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (35) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_37

action_15 _ = happyReduce_7

action_16 (35) = happyShift action_7
action_16 (51) = happyShift action_8
action_16 (56) = happyShift action_9
action_16 (59) = happyShift action_10
action_16 (61) = happyShift action_11
action_16 (10) = happyGoto action_20
action_16 (11) = happyGoto action_21
action_16 (17) = happyGoto action_22
action_16 _ = happyReduce_9

action_17 (35) = happyShift action_7
action_17 (51) = happyShift action_8
action_17 (56) = happyShift action_9
action_17 (59) = happyShift action_10
action_17 (61) = happyShift action_11
action_17 (17) = happyGoto action_18
action_17 (18) = happyGoto action_19
action_17 _ = happyReduce_39

action_18 (33) = happyShift action_14
action_18 (40) = happyShift action_27
action_18 _ = happyReduce_40

action_19 (36) = happyShift action_26
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (40) = happyShift action_25
action_20 _ = happyReduce_10

action_21 (36) = happyShift action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (33) = happyShift action_14
action_22 (66) = happyShift action_2
action_22 (4) = happyGoto action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_8

action_24 (63) = happyShift action_31
action_24 (12) = happyGoto action_30
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (35) = happyShift action_7
action_25 (51) = happyShift action_8
action_25 (56) = happyShift action_9
action_25 (59) = happyShift action_10
action_25 (61) = happyShift action_11
action_25 (10) = happyGoto action_20
action_25 (11) = happyGoto action_29
action_25 (17) = happyGoto action_22
action_25 _ = happyReduce_9

action_26 _ = happyReduce_38

action_27 (35) = happyShift action_7
action_27 (51) = happyShift action_8
action_27 (56) = happyShift action_9
action_27 (59) = happyShift action_10
action_27 (61) = happyShift action_11
action_27 (17) = happyGoto action_18
action_27 (18) = happyGoto action_28
action_27 _ = happyReduce_39

action_28 _ = happyReduce_41

action_29 _ = happyReduce_11

action_30 _ = happyReduce_5

action_31 (13) = happyGoto action_32
action_31 _ = happyReduce_13

action_32 (30) = happyShift action_47
action_32 (35) = happyShift action_48
action_32 (41) = happyShift action_49
action_32 (44) = happyShift action_50
action_32 (51) = happyShift action_8
action_32 (52) = happyShift action_51
action_32 (54) = happyShift action_52
action_32 (55) = happyShift action_53
action_32 (56) = happyShift action_9
action_32 (57) = happyShift action_54
action_32 (58) = happyShift action_55
action_32 (59) = happyShift action_10
action_32 (60) = happyShift action_56
action_32 (61) = happyShift action_11
action_32 (62) = happyShift action_57
action_32 (63) = happyShift action_31
action_32 (65) = happyShift action_58
action_32 (66) = happyShift action_2
action_32 (67) = happyShift action_59
action_32 (68) = happyShift action_60
action_32 (4) = happyGoto action_33
action_32 (5) = happyGoto action_34
action_32 (6) = happyGoto action_35
action_32 (8) = happyGoto action_36
action_32 (12) = happyGoto action_37
action_32 (14) = happyGoto action_38
action_32 (17) = happyGoto action_39
action_32 (19) = happyGoto action_40
action_32 (20) = happyGoto action_41
action_32 (21) = happyGoto action_42
action_32 (22) = happyGoto action_43
action_32 (23) = happyGoto action_44
action_32 (24) = happyGoto action_45
action_32 (25) = happyGoto action_46
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (39) = happyShift action_93
action_33 (42) = happyShift action_94
action_33 (47) = happyShift action_95
action_33 _ = happyReduce_43

action_34 _ = happyReduce_44

action_35 _ = happyReduce_48

action_36 _ = happyReduce_15

action_37 _ = happyReduce_17

action_38 _ = happyReduce_14

action_39 (33) = happyShift action_14
action_39 (66) = happyShift action_2
action_39 (4) = happyGoto action_90
action_39 (15) = happyGoto action_91
action_39 (16) = happyGoto action_92
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (35) = happyShift action_89
action_40 _ = happyReduce_52

action_41 _ = happyReduce_54

action_42 (32) = happyShift action_86
action_42 (37) = happyShift action_87
action_42 (43) = happyShift action_88
action_42 (28) = happyGoto action_85
action_42 _ = happyReduce_56

action_43 (38) = happyShift action_83
action_43 (41) = happyShift action_84
action_43 (27) = happyGoto action_82
action_43 _ = happyReduce_58

action_44 (31) = happyShift action_75
action_44 (34) = happyShift action_76
action_44 (45) = happyShift action_77
action_44 (46) = happyShift action_78
action_44 (48) = happyShift action_79
action_44 (49) = happyShift action_80
action_44 (50) = happyShift action_81
action_44 (29) = happyGoto action_74
action_44 _ = happyReduce_60

action_45 (64) = happyShift action_73
action_45 _ = happyReduce_62

action_46 (44) = happyShift action_72
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (35) = happyShift action_64
action_47 (54) = happyShift action_52
action_47 (57) = happyShift action_54
action_47 (60) = happyShift action_56
action_47 (66) = happyShift action_2
action_47 (67) = happyShift action_59
action_47 (68) = happyShift action_60
action_47 (4) = happyGoto action_62
action_47 (5) = happyGoto action_34
action_47 (6) = happyGoto action_35
action_47 (19) = happyGoto action_71
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (30) = happyShift action_47
action_48 (35) = happyShift action_48
action_48 (41) = happyShift action_49
action_48 (51) = happyShift action_8
action_48 (54) = happyShift action_52
action_48 (56) = happyShift action_9
action_48 (57) = happyShift action_54
action_48 (59) = happyShift action_10
action_48 (60) = happyShift action_56
action_48 (61) = happyShift action_11
action_48 (66) = happyShift action_2
action_48 (67) = happyShift action_59
action_48 (68) = happyShift action_60
action_48 (4) = happyGoto action_62
action_48 (5) = happyGoto action_34
action_48 (6) = happyGoto action_35
action_48 (17) = happyGoto action_12
action_48 (19) = happyGoto action_40
action_48 (20) = happyGoto action_41
action_48 (21) = happyGoto action_42
action_48 (22) = happyGoto action_43
action_48 (23) = happyGoto action_44
action_48 (24) = happyGoto action_45
action_48 (25) = happyGoto action_70
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (35) = happyShift action_64
action_49 (54) = happyShift action_52
action_49 (57) = happyShift action_54
action_49 (60) = happyShift action_56
action_49 (66) = happyShift action_2
action_49 (67) = happyShift action_59
action_49 (68) = happyShift action_60
action_49 (4) = happyGoto action_62
action_49 (5) = happyGoto action_34
action_49 (6) = happyGoto action_35
action_49 (19) = happyGoto action_69
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_16

action_51 (44) = happyShift action_68
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_46

action_53 (35) = happyShift action_67
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (35) = happyShift action_7
action_54 (51) = happyShift action_8
action_54 (56) = happyShift action_9
action_54 (59) = happyShift action_10
action_54 (61) = happyShift action_11
action_54 (17) = happyGoto action_66
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (30) = happyShift action_47
action_55 (35) = happyShift action_64
action_55 (41) = happyShift action_49
action_55 (44) = happyShift action_65
action_55 (54) = happyShift action_52
action_55 (57) = happyShift action_54
action_55 (60) = happyShift action_56
action_55 (66) = happyShift action_2
action_55 (67) = happyShift action_59
action_55 (68) = happyShift action_60
action_55 (4) = happyGoto action_62
action_55 (5) = happyGoto action_34
action_55 (6) = happyGoto action_35
action_55 (19) = happyGoto action_40
action_55 (20) = happyGoto action_41
action_55 (21) = happyGoto action_42
action_55 (22) = happyGoto action_43
action_55 (23) = happyGoto action_44
action_55 (24) = happyGoto action_45
action_55 (25) = happyGoto action_63
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_45

action_57 (35) = happyShift action_61
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_12

action_59 _ = happyReduce_2

action_60 _ = happyReduce_3

action_61 (30) = happyShift action_47
action_61 (35) = happyShift action_64
action_61 (41) = happyShift action_49
action_61 (54) = happyShift action_52
action_61 (57) = happyShift action_54
action_61 (60) = happyShift action_56
action_61 (66) = happyShift action_2
action_61 (67) = happyShift action_59
action_61 (68) = happyShift action_60
action_61 (4) = happyGoto action_62
action_61 (5) = happyGoto action_34
action_61 (6) = happyGoto action_35
action_61 (19) = happyGoto action_40
action_61 (20) = happyGoto action_41
action_61 (21) = happyGoto action_42
action_61 (22) = happyGoto action_43
action_61 (23) = happyGoto action_44
action_61 (24) = happyGoto action_45
action_61 (25) = happyGoto action_113
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_43

action_63 (44) = happyShift action_112
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (30) = happyShift action_47
action_64 (35) = happyShift action_64
action_64 (41) = happyShift action_49
action_64 (54) = happyShift action_52
action_64 (57) = happyShift action_54
action_64 (60) = happyShift action_56
action_64 (66) = happyShift action_2
action_64 (67) = happyShift action_59
action_64 (68) = happyShift action_60
action_64 (4) = happyGoto action_62
action_64 (5) = happyGoto action_34
action_64 (6) = happyGoto action_35
action_64 (19) = happyGoto action_40
action_64 (20) = happyGoto action_41
action_64 (21) = happyGoto action_42
action_64 (22) = happyGoto action_43
action_64 (23) = happyGoto action_44
action_64 (24) = happyGoto action_45
action_64 (25) = happyGoto action_70
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_23

action_66 (33) = happyShift action_14
action_66 (40) = happyShift action_111
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (30) = happyShift action_47
action_67 (35) = happyShift action_64
action_67 (41) = happyShift action_49
action_67 (54) = happyShift action_52
action_67 (57) = happyShift action_54
action_67 (60) = happyShift action_56
action_67 (66) = happyShift action_2
action_67 (67) = happyShift action_59
action_67 (68) = happyShift action_60
action_67 (4) = happyGoto action_62
action_67 (5) = happyGoto action_34
action_67 (6) = happyGoto action_35
action_67 (19) = happyGoto action_40
action_67 (20) = happyGoto action_41
action_67 (21) = happyGoto action_42
action_67 (22) = happyGoto action_43
action_67 (23) = happyGoto action_44
action_67 (24) = happyGoto action_45
action_67 (25) = happyGoto action_110
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_27

action_69 (35) = happyShift action_89
action_69 _ = happyReduce_50

action_70 (36) = happyShift action_109
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (35) = happyShift action_89
action_71 _ = happyReduce_51

action_72 _ = happyReduce_28

action_73 (30) = happyShift action_47
action_73 (35) = happyShift action_64
action_73 (41) = happyShift action_49
action_73 (54) = happyShift action_52
action_73 (57) = happyShift action_54
action_73 (60) = happyShift action_56
action_73 (66) = happyShift action_2
action_73 (67) = happyShift action_59
action_73 (68) = happyShift action_60
action_73 (4) = happyGoto action_62
action_73 (5) = happyGoto action_34
action_73 (6) = happyGoto action_35
action_73 (19) = happyGoto action_40
action_73 (20) = happyGoto action_41
action_73 (21) = happyGoto action_42
action_73 (22) = happyGoto action_43
action_73 (23) = happyGoto action_44
action_73 (24) = happyGoto action_45
action_73 (25) = happyGoto action_108
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (30) = happyShift action_47
action_74 (35) = happyShift action_64
action_74 (41) = happyShift action_49
action_74 (54) = happyShift action_52
action_74 (57) = happyShift action_54
action_74 (60) = happyShift action_56
action_74 (66) = happyShift action_2
action_74 (67) = happyShift action_59
action_74 (68) = happyShift action_60
action_74 (4) = happyGoto action_62
action_74 (5) = happyGoto action_34
action_74 (6) = happyGoto action_35
action_74 (19) = happyGoto action_40
action_74 (20) = happyGoto action_41
action_74 (21) = happyGoto action_42
action_74 (22) = happyGoto action_107
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_76

action_76 (30) = happyShift action_47
action_76 (35) = happyShift action_64
action_76 (41) = happyShift action_49
action_76 (54) = happyShift action_52
action_76 (57) = happyShift action_54
action_76 (60) = happyShift action_56
action_76 (66) = happyShift action_2
action_76 (67) = happyShift action_59
action_76 (68) = happyShift action_60
action_76 (4) = happyGoto action_62
action_76 (5) = happyGoto action_34
action_76 (6) = happyGoto action_35
action_76 (19) = happyGoto action_40
action_76 (20) = happyGoto action_41
action_76 (21) = happyGoto action_42
action_76 (22) = happyGoto action_43
action_76 (23) = happyGoto action_44
action_76 (24) = happyGoto action_106
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_71

action_78 _ = happyReduce_72

action_79 _ = happyReduce_75

action_80 _ = happyReduce_73

action_81 _ = happyReduce_74

action_82 (30) = happyShift action_47
action_82 (35) = happyShift action_64
action_82 (41) = happyShift action_49
action_82 (54) = happyShift action_52
action_82 (57) = happyShift action_54
action_82 (60) = happyShift action_56
action_82 (66) = happyShift action_2
action_82 (67) = happyShift action_59
action_82 (68) = happyShift action_60
action_82 (4) = happyGoto action_62
action_82 (5) = happyGoto action_34
action_82 (6) = happyGoto action_35
action_82 (19) = happyGoto action_40
action_82 (20) = happyGoto action_41
action_82 (21) = happyGoto action_105
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_66

action_84 _ = happyReduce_67

action_85 (30) = happyShift action_47
action_85 (35) = happyShift action_64
action_85 (41) = happyShift action_49
action_85 (54) = happyShift action_52
action_85 (57) = happyShift action_54
action_85 (60) = happyShift action_56
action_85 (66) = happyShift action_2
action_85 (67) = happyShift action_59
action_85 (68) = happyShift action_60
action_85 (4) = happyGoto action_62
action_85 (5) = happyGoto action_34
action_85 (6) = happyGoto action_35
action_85 (19) = happyGoto action_40
action_85 (20) = happyGoto action_104
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_70

action_87 _ = happyReduce_68

action_88 _ = happyReduce_69

action_89 (30) = happyShift action_47
action_89 (35) = happyShift action_64
action_89 (41) = happyShift action_49
action_89 (54) = happyShift action_52
action_89 (57) = happyShift action_54
action_89 (60) = happyShift action_56
action_89 (66) = happyShift action_2
action_89 (67) = happyShift action_59
action_89 (68) = happyShift action_60
action_89 (4) = happyGoto action_62
action_89 (5) = happyGoto action_34
action_89 (6) = happyGoto action_35
action_89 (19) = happyGoto action_40
action_89 (20) = happyGoto action_41
action_89 (21) = happyGoto action_42
action_89 (22) = happyGoto action_43
action_89 (23) = happyGoto action_44
action_89 (24) = happyGoto action_45
action_89 (25) = happyGoto action_102
action_89 (26) = happyGoto action_103
action_89 _ = happyReduce_63

action_90 (35) = happyShift action_16
action_90 (47) = happyShift action_101
action_90 _ = happyReduce_29

action_91 (40) = happyShift action_100
action_91 _ = happyReduce_31

action_92 (44) = happyShift action_99
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (44) = happyShift action_98
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (44) = happyShift action_97
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (30) = happyShift action_47
action_95 (35) = happyShift action_64
action_95 (41) = happyShift action_49
action_95 (54) = happyShift action_52
action_95 (57) = happyShift action_54
action_95 (60) = happyShift action_56
action_95 (66) = happyShift action_2
action_95 (67) = happyShift action_59
action_95 (68) = happyShift action_60
action_95 (4) = happyGoto action_62
action_95 (5) = happyGoto action_34
action_95 (6) = happyGoto action_35
action_95 (19) = happyGoto action_40
action_95 (20) = happyGoto action_41
action_95 (21) = happyGoto action_42
action_95 (22) = happyGoto action_43
action_95 (23) = happyGoto action_44
action_95 (24) = happyGoto action_45
action_95 (25) = happyGoto action_96
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (44) = happyShift action_122
action_96 _ = happyFail (happyExpListPerState 96)

action_97 _ = happyReduce_21

action_98 _ = happyReduce_20

action_99 _ = happyReduce_18

action_100 (66) = happyShift action_2
action_100 (4) = happyGoto action_120
action_100 (15) = happyGoto action_91
action_100 (16) = happyGoto action_121
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (30) = happyShift action_47
action_101 (35) = happyShift action_64
action_101 (41) = happyShift action_49
action_101 (54) = happyShift action_52
action_101 (57) = happyShift action_54
action_101 (60) = happyShift action_56
action_101 (66) = happyShift action_2
action_101 (67) = happyShift action_59
action_101 (68) = happyShift action_60
action_101 (4) = happyGoto action_62
action_101 (5) = happyGoto action_34
action_101 (6) = happyGoto action_35
action_101 (19) = happyGoto action_40
action_101 (20) = happyGoto action_41
action_101 (21) = happyGoto action_42
action_101 (22) = happyGoto action_43
action_101 (23) = happyGoto action_44
action_101 (24) = happyGoto action_45
action_101 (25) = happyGoto action_119
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (40) = happyShift action_118
action_102 _ = happyReduce_64

action_103 (36) = happyShift action_117
action_103 _ = happyFail (happyExpListPerState 103)

action_104 _ = happyReduce_53

action_105 (32) = happyShift action_86
action_105 (37) = happyShift action_87
action_105 (43) = happyShift action_88
action_105 (28) = happyGoto action_85
action_105 _ = happyReduce_55

action_106 _ = happyReduce_59

action_107 (38) = happyShift action_83
action_107 (41) = happyShift action_84
action_107 (27) = happyGoto action_82
action_107 _ = happyReduce_57

action_108 _ = happyReduce_61

action_109 _ = happyReduce_49

action_110 (36) = happyShift action_116
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (35) = happyShift action_7
action_111 (51) = happyShift action_8
action_111 (56) = happyShift action_9
action_111 (59) = happyShift action_10
action_111 (61) = happyShift action_11
action_111 (10) = happyGoto action_20
action_111 (11) = happyGoto action_115
action_111 (17) = happyGoto action_22
action_111 _ = happyReduce_9

action_112 _ = happyReduce_22

action_113 (36) = happyShift action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (30) = happyShift action_47
action_114 (35) = happyShift action_48
action_114 (41) = happyShift action_49
action_114 (44) = happyShift action_50
action_114 (51) = happyShift action_8
action_114 (52) = happyShift action_51
action_114 (54) = happyShift action_52
action_114 (55) = happyShift action_53
action_114 (56) = happyShift action_9
action_114 (57) = happyShift action_54
action_114 (58) = happyShift action_55
action_114 (59) = happyShift action_10
action_114 (60) = happyShift action_56
action_114 (61) = happyShift action_11
action_114 (62) = happyShift action_57
action_114 (63) = happyShift action_31
action_114 (66) = happyShift action_2
action_114 (67) = happyShift action_59
action_114 (68) = happyShift action_60
action_114 (4) = happyGoto action_33
action_114 (5) = happyGoto action_34
action_114 (6) = happyGoto action_35
action_114 (8) = happyGoto action_36
action_114 (12) = happyGoto action_37
action_114 (14) = happyGoto action_126
action_114 (17) = happyGoto action_39
action_114 (19) = happyGoto action_40
action_114 (20) = happyGoto action_41
action_114 (21) = happyGoto action_42
action_114 (22) = happyGoto action_43
action_114 (23) = happyGoto action_44
action_114 (24) = happyGoto action_45
action_114 (25) = happyGoto action_46
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (36) = happyShift action_125
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (30) = happyShift action_47
action_116 (35) = happyShift action_48
action_116 (41) = happyShift action_49
action_116 (44) = happyShift action_50
action_116 (51) = happyShift action_8
action_116 (52) = happyShift action_51
action_116 (54) = happyShift action_52
action_116 (55) = happyShift action_53
action_116 (56) = happyShift action_9
action_116 (57) = happyShift action_54
action_116 (58) = happyShift action_55
action_116 (59) = happyShift action_10
action_116 (60) = happyShift action_56
action_116 (61) = happyShift action_11
action_116 (62) = happyShift action_57
action_116 (63) = happyShift action_31
action_116 (66) = happyShift action_2
action_116 (67) = happyShift action_59
action_116 (68) = happyShift action_60
action_116 (4) = happyGoto action_33
action_116 (5) = happyGoto action_34
action_116 (6) = happyGoto action_35
action_116 (8) = happyGoto action_36
action_116 (12) = happyGoto action_37
action_116 (14) = happyGoto action_124
action_116 (17) = happyGoto action_39
action_116 (19) = happyGoto action_40
action_116 (20) = happyGoto action_41
action_116 (21) = happyGoto action_42
action_116 (22) = happyGoto action_43
action_116 (23) = happyGoto action_44
action_116 (24) = happyGoto action_45
action_116 (25) = happyGoto action_46
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_47

action_118 (30) = happyShift action_47
action_118 (35) = happyShift action_64
action_118 (41) = happyShift action_49
action_118 (54) = happyShift action_52
action_118 (57) = happyShift action_54
action_118 (60) = happyShift action_56
action_118 (66) = happyShift action_2
action_118 (67) = happyShift action_59
action_118 (68) = happyShift action_60
action_118 (4) = happyGoto action_62
action_118 (5) = happyGoto action_34
action_118 (6) = happyGoto action_35
action_118 (19) = happyGoto action_40
action_118 (20) = happyGoto action_41
action_118 (21) = happyGoto action_42
action_118 (22) = happyGoto action_43
action_118 (23) = happyGoto action_44
action_118 (24) = happyGoto action_45
action_118 (25) = happyGoto action_102
action_118 (26) = happyGoto action_123
action_118 _ = happyReduce_63

action_119 _ = happyReduce_30

action_120 (47) = happyShift action_101
action_120 _ = happyReduce_29

action_121 _ = happyReduce_32

action_122 _ = happyReduce_19

action_123 _ = happyReduce_65

action_124 (53) = happyShift action_128
action_124 _ = happyReduce_24

action_125 (63) = happyShift action_31
action_125 (12) = happyGoto action_127
action_125 _ = happyFail (happyExpListPerState 125)

action_126 _ = happyReduce_26

action_127 _ = happyReduce_42

action_128 (30) = happyShift action_47
action_128 (35) = happyShift action_48
action_128 (41) = happyShift action_49
action_128 (44) = happyShift action_50
action_128 (51) = happyShift action_8
action_128 (52) = happyShift action_51
action_128 (54) = happyShift action_52
action_128 (55) = happyShift action_53
action_128 (56) = happyShift action_9
action_128 (57) = happyShift action_54
action_128 (58) = happyShift action_55
action_128 (59) = happyShift action_10
action_128 (60) = happyShift action_56
action_128 (61) = happyShift action_11
action_128 (62) = happyShift action_57
action_128 (63) = happyShift action_31
action_128 (66) = happyShift action_2
action_128 (67) = happyShift action_59
action_128 (68) = happyShift action_60
action_128 (4) = happyGoto action_33
action_128 (5) = happyGoto action_34
action_128 (6) = happyGoto action_35
action_128 (8) = happyGoto action_36
action_128 (12) = happyGoto action_37
action_128 (14) = happyGoto action_129
action_128 (17) = happyGoto action_39
action_128 (19) = happyGoto action_40
action_128 (20) = happyGoto action_41
action_128 (21) = happyGoto action_42
action_128 (22) = happyGoto action_43
action_128 (23) = happyGoto action_44
action_128 (24) = happyGoto action_45
action_128 (25) = happyGoto action_46
action_128 _ = happyFail (happyExpListPerState 128)

action_129 _ = happyReduce_25

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

happyReduce_37 = happySpecReduce_2  17 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.Ref happy_var_1
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 5 17 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn18  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AbsGram.Fun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_0  18 happyReduction_39
happyReduction_39  =  HappyAbsSyn18
		 ([]
	)

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn18
		 ((:[]) happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  18 happyReduction_41
happyReduction_41 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn18
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happyReduce 6 19 happyReduction_42
happyReduction_42 ((HappyAbsSyn12  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AbsGram.ELam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_43 = happySpecReduce_1  19 happyReduction_43
happyReduction_43 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EVar happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.ELitInt happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  19 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn19
		 (AbsGram.ELitTrue
	)

happyReduce_46 = happySpecReduce_1  19 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn19
		 (AbsGram.ELitFalse
	)

happyReduce_47 = happyReduce 4 19 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn26  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn19  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (AbsGram.EApp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_1  19 happyReduction_48
happyReduction_48 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EString happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  19 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  20 happyReduction_50
happyReduction_50 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (AbsGram.Neg happy_var_2
	)
happyReduction_50 _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_2  20 happyReduction_51
happyReduction_51 (HappyAbsSyn19  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (AbsGram.Not happy_var_2
	)
happyReduction_51 _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  20 happyReduction_52
happyReduction_52 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  21 happyReduction_53
happyReduction_53 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn28  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EMul happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  21 happyReduction_54
happyReduction_54 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_3  22 happyReduction_55
happyReduction_55 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn27  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EAdd happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  22 happyReduction_56
happyReduction_56 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  23 happyReduction_57
happyReduction_57 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn29  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.ERel happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  23 happyReduction_58
happyReduction_58 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_58 _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_3  24 happyReduction_59
happyReduction_59 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_1  24 happyReduction_60
happyReduction_60 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_60 _  = notHappyAtAll 

happyReduce_61 = happySpecReduce_3  25 happyReduction_61
happyReduction_61 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_61 _ _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_1  25 happyReduction_62
happyReduction_62 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn19
		 (happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_0  26 happyReduction_63
happyReduction_63  =  HappyAbsSyn26
		 ([]
	)

happyReduce_64 = happySpecReduce_1  26 happyReduction_64
happyReduction_64 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn26
		 ((:[]) happy_var_1
	)
happyReduction_64 _  = notHappyAtAll 

happyReduce_65 = happySpecReduce_3  26 happyReduction_65
happyReduction_65 (HappyAbsSyn26  happy_var_3)
	_
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn26
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_65 _ _ _  = notHappyAtAll 

happyReduce_66 = happySpecReduce_1  27 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn27
		 (AbsGram.Plus
	)

happyReduce_67 = happySpecReduce_1  27 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn27
		 (AbsGram.Minus
	)

happyReduce_68 = happySpecReduce_1  28 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn28
		 (AbsGram.Times
	)

happyReduce_69 = happySpecReduce_1  28 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn28
		 (AbsGram.Div
	)

happyReduce_70 = happySpecReduce_1  28 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn28
		 (AbsGram.Mod
	)

happyReduce_71 = happySpecReduce_1  29 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn29
		 (AbsGram.LTH
	)

happyReduce_72 = happySpecReduce_1  29 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn29
		 (AbsGram.LE
	)

happyReduce_73 = happySpecReduce_1  29 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn29
		 (AbsGram.GTH
	)

happyReduce_74 = happySpecReduce_1  29 happyReduction_74
happyReduction_74 _
	 =  HappyAbsSyn29
		 (AbsGram.GE
	)

happyReduce_75 = happySpecReduce_1  29 happyReduction_75
happyReduction_75 _
	 =  HappyAbsSyn29
		 (AbsGram.EQU
	)

happyReduce_76 = happySpecReduce_1  29 happyReduction_76
happyReduction_76 _
	 =  HappyAbsSyn29
		 (AbsGram.NE
	)

happyNewToken action sts stk [] =
	action 69 69 notHappyAtAll (HappyState action) sts stk []

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
	PT _ (TS _ 36) -> cont 65;
	PT _ (TV happy_dollar_dollar) -> cont 66;
	PT _ (TI happy_dollar_dollar) -> cont 67;
	PT _ (TL happy_dollar_dollar) -> cont 68;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 69 tk tks = happyError' (tks, explist)
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
