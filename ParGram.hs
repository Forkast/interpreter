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
	| HappyAbsSyn8 (Arg)
	| HappyAbsSyn9 ([Arg])
	| HappyAbsSyn10 (Block)
	| HappyAbsSyn11 ([Stmt])
	| HappyAbsSyn12 (Stmt)
	| HappyAbsSyn13 (Item)
	| HappyAbsSyn14 ([Item])
	| HappyAbsSyn15 (Type)
	| HappyAbsSyn16 ([Type])
	| HappyAbsSyn17 (Expr)
	| HappyAbsSyn24 ([Expr])
	| HappyAbsSyn25 (AddOp)
	| HappyAbsSyn26 (MulOp)
	| HappyAbsSyn27 (RelOp)

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
 action_124 :: () => Int -> ({-HappyReduction (Err) = -}
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
 happyReduce_73 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,425) ([0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,4224,45092,14847,0,0,2120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,8192,0,0,2,0,0,0,0,0,0,0,33296,0,0,0,8192,1,0,0,4608,7552,0,0,0,0,8192,0,0,4096,0,0,0,64,37376,224,0,33296,53760,1806,0,4096,32768,14372,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,0,2,2626,0,32768,9232,9344,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4224,45092,15871,0,33792,32,49444,1,0,0,0,0,0,16384,0,0,0,16648,18432,898,0,0,0,0,0,4096,8,0,0,0,2,2626,0,32768,1040,9344,56,0,0,0,0,0,1024,0,0,0,2048,4,0,0,0,2,0,0,0,8,0,0,0,0,0,0,0,33296,36864,1796,0,4224,32772,14372,0,0,0,0,0,8192,260,2336,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,1040,9344,56,0,0,0,0,0,0,0,0,0,8448,8,28745,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33296,36864,1796,0,4096,256,0,0,0,16,0,0,0,2048,0,0,0,0,0,0,0,0,2,0,0,0,16,0,0,16896,16,57490,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,1,1313,0,16384,520,4672,28,0,2048,0,0,0,1024,0,0,0,0,0,0,0,4096,130,0,0,0,0,0,0,0,2304,0,0,0,0,0,0,0,0,0,0,0,16384,16384,328,0,0,4,0,0,0,16,21008,0,0,0,0,0,0,2048,0,0,0,0,0,0,0,2048,577,40955,3,0,258,0,0,0,128,0,0,0,33296,62980,1855,0,8192,0,0,0,0,0,0,0,8192,260,2336,14,0,0,0,0,0,8192,0,0,0,4096,0,0,0,4096,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,0,1,1313,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256,0,32768,32768,656,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2112,55314,7423,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","Ident","Integer","String","Program","Arg","ListArg","Block","ListStmt","Stmt","Item","ListItem","Type","ListType","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","ListExpr","AddOp","MulOp","RelOp","'!'","'!='","'%'","'&'","'&&'","'('","')'","'*'","'+'","'++'","','","'-'","'--'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'bool'","'debug'","'else'","'false'","'if'","'int'","'lambda('","'return'","'string'","'true'","'void'","'while'","'{'","'||'","'}'","L_ident","L_integ","L_quoted","%eof"]
        bit_start = st * 67
        bit_end = (st + 1) * 67
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..66]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyGoto action_3
action_0 (11) = happyGoto action_4
action_0 _ = happyReduce_10

action_1 (64) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (67) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (28) = happyShift action_18
action_4 (33) = happyShift action_19
action_4 (39) = happyShift action_20
action_4 (42) = happyShift action_21
action_4 (49) = happyShift action_22
action_4 (50) = happyShift action_23
action_4 (52) = happyShift action_24
action_4 (53) = happyShift action_25
action_4 (54) = happyShift action_26
action_4 (55) = happyShift action_27
action_4 (56) = happyShift action_28
action_4 (57) = happyShift action_29
action_4 (58) = happyShift action_30
action_4 (59) = happyShift action_31
action_4 (60) = happyShift action_32
action_4 (61) = happyShift action_33
action_4 (64) = happyShift action_2
action_4 (65) = happyShift action_34
action_4 (66) = happyShift action_35
action_4 (4) = happyGoto action_5
action_4 (5) = happyGoto action_6
action_4 (6) = happyGoto action_7
action_4 (10) = happyGoto action_8
action_4 (12) = happyGoto action_9
action_4 (15) = happyGoto action_10
action_4 (17) = happyGoto action_11
action_4 (18) = happyGoto action_12
action_4 (19) = happyGoto action_13
action_4 (20) = happyGoto action_14
action_4 (21) = happyGoto action_15
action_4 (22) = happyGoto action_16
action_4 (23) = happyGoto action_17
action_4 _ = happyReduce_4

action_5 (37) = happyShift action_72
action_5 (40) = happyShift action_73
action_5 (45) = happyShift action_74
action_5 _ = happyReduce_40

action_6 _ = happyReduce_41

action_7 _ = happyReduce_45

action_8 _ = happyReduce_13

action_9 _ = happyReduce_11

action_10 (31) = happyShift action_71
action_10 (64) = happyShift action_2
action_10 (4) = happyGoto action_68
action_10 (13) = happyGoto action_69
action_10 (14) = happyGoto action_70
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (33) = happyShift action_67
action_11 _ = happyReduce_49

action_12 _ = happyReduce_51

action_13 (30) = happyShift action_64
action_13 (35) = happyShift action_65
action_13 (41) = happyShift action_66
action_13 (26) = happyGoto action_63
action_13 _ = happyReduce_53

action_14 (36) = happyShift action_61
action_14 (39) = happyShift action_62
action_14 (25) = happyGoto action_60
action_14 _ = happyReduce_55

action_15 (29) = happyShift action_53
action_15 (32) = happyShift action_54
action_15 (43) = happyShift action_55
action_15 (44) = happyShift action_56
action_15 (46) = happyShift action_57
action_15 (47) = happyShift action_58
action_15 (48) = happyShift action_59
action_15 (27) = happyGoto action_52
action_15 _ = happyReduce_57

action_16 (62) = happyShift action_51
action_16 _ = happyReduce_59

action_17 (42) = happyShift action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (33) = happyShift action_40
action_18 (52) = happyShift action_24
action_18 (55) = happyShift action_27
action_18 (58) = happyShift action_30
action_18 (64) = happyShift action_2
action_18 (65) = happyShift action_34
action_18 (66) = happyShift action_35
action_18 (4) = happyGoto action_38
action_18 (5) = happyGoto action_6
action_18 (6) = happyGoto action_7
action_18 (17) = happyGoto action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_18
action_19 (33) = happyShift action_19
action_19 (39) = happyShift action_20
action_19 (49) = happyShift action_22
action_19 (52) = happyShift action_24
action_19 (54) = happyShift action_26
action_19 (55) = happyShift action_27
action_19 (57) = happyShift action_29
action_19 (58) = happyShift action_30
action_19 (59) = happyShift action_31
action_19 (64) = happyShift action_2
action_19 (65) = happyShift action_34
action_19 (66) = happyShift action_35
action_19 (4) = happyGoto action_38
action_19 (5) = happyGoto action_6
action_19 (6) = happyGoto action_7
action_19 (15) = happyGoto action_47
action_19 (17) = happyGoto action_11
action_19 (18) = happyGoto action_12
action_19 (19) = happyGoto action_13
action_19 (20) = happyGoto action_14
action_19 (21) = happyGoto action_15
action_19 (22) = happyGoto action_16
action_19 (23) = happyGoto action_48
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (33) = happyShift action_40
action_20 (52) = happyShift action_24
action_20 (55) = happyShift action_27
action_20 (58) = happyShift action_30
action_20 (64) = happyShift action_2
action_20 (65) = happyShift action_34
action_20 (66) = happyShift action_35
action_20 (4) = happyGoto action_38
action_20 (5) = happyGoto action_6
action_20 (6) = happyGoto action_7
action_20 (17) = happyGoto action_46
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_12

action_22 _ = happyReduce_32

action_23 (42) = happyShift action_45
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_43

action_25 (33) = happyShift action_44
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_30

action_27 (33) = happyShift action_43
action_27 (49) = happyShift action_22
action_27 (54) = happyShift action_26
action_27 (57) = happyShift action_29
action_27 (59) = happyShift action_31
action_27 (15) = happyGoto action_42
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_18
action_28 (33) = happyShift action_40
action_28 (39) = happyShift action_20
action_28 (42) = happyShift action_41
action_28 (52) = happyShift action_24
action_28 (55) = happyShift action_27
action_28 (58) = happyShift action_30
action_28 (64) = happyShift action_2
action_28 (65) = happyShift action_34
action_28 (66) = happyShift action_35
action_28 (4) = happyGoto action_38
action_28 (5) = happyGoto action_6
action_28 (6) = happyGoto action_7
action_28 (17) = happyGoto action_11
action_28 (18) = happyGoto action_12
action_28 (19) = happyGoto action_13
action_28 (20) = happyGoto action_14
action_28 (21) = happyGoto action_15
action_28 (22) = happyGoto action_16
action_28 (23) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_31

action_30 _ = happyReduce_42

action_31 _ = happyReduce_33

action_32 (33) = happyShift action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyGoto action_36
action_33 _ = happyReduce_10

action_34 _ = happyReduce_2

action_35 _ = happyReduce_3

action_36 (28) = happyShift action_18
action_36 (33) = happyShift action_19
action_36 (39) = happyShift action_20
action_36 (42) = happyShift action_21
action_36 (49) = happyShift action_22
action_36 (50) = happyShift action_23
action_36 (52) = happyShift action_24
action_36 (53) = happyShift action_25
action_36 (54) = happyShift action_26
action_36 (55) = happyShift action_27
action_36 (56) = happyShift action_28
action_36 (57) = happyShift action_29
action_36 (58) = happyShift action_30
action_36 (59) = happyShift action_31
action_36 (60) = happyShift action_32
action_36 (61) = happyShift action_33
action_36 (63) = happyShift action_95
action_36 (64) = happyShift action_2
action_36 (65) = happyShift action_34
action_36 (66) = happyShift action_35
action_36 (4) = happyGoto action_5
action_36 (5) = happyGoto action_6
action_36 (6) = happyGoto action_7
action_36 (10) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 (15) = happyGoto action_10
action_36 (17) = happyGoto action_11
action_36 (18) = happyGoto action_12
action_36 (19) = happyGoto action_13
action_36 (20) = happyGoto action_14
action_36 (21) = happyGoto action_15
action_36 (22) = happyGoto action_16
action_36 (23) = happyGoto action_17
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (28) = happyShift action_18
action_37 (33) = happyShift action_40
action_37 (39) = happyShift action_20
action_37 (52) = happyShift action_24
action_37 (55) = happyShift action_27
action_37 (58) = happyShift action_30
action_37 (64) = happyShift action_2
action_37 (65) = happyShift action_34
action_37 (66) = happyShift action_35
action_37 (4) = happyGoto action_38
action_37 (5) = happyGoto action_6
action_37 (6) = happyGoto action_7
action_37 (17) = happyGoto action_11
action_37 (18) = happyGoto action_12
action_37 (19) = happyGoto action_13
action_37 (20) = happyGoto action_14
action_37 (21) = happyGoto action_15
action_37 (22) = happyGoto action_16
action_37 (23) = happyGoto action_94
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_40

action_39 (42) = happyShift action_93
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (28) = happyShift action_18
action_40 (33) = happyShift action_40
action_40 (39) = happyShift action_20
action_40 (52) = happyShift action_24
action_40 (55) = happyShift action_27
action_40 (58) = happyShift action_30
action_40 (64) = happyShift action_2
action_40 (65) = happyShift action_34
action_40 (66) = happyShift action_35
action_40 (4) = happyGoto action_38
action_40 (5) = happyGoto action_6
action_40 (6) = happyGoto action_7
action_40 (17) = happyGoto action_11
action_40 (18) = happyGoto action_12
action_40 (19) = happyGoto action_13
action_40 (20) = happyGoto action_14
action_40 (21) = happyGoto action_15
action_40 (22) = happyGoto action_16
action_40 (23) = happyGoto action_48
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_19

action_42 (31) = happyShift action_71
action_42 (38) = happyShift action_92
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (33) = happyShift action_43
action_43 (49) = happyShift action_22
action_43 (54) = happyShift action_26
action_43 (57) = happyShift action_29
action_43 (59) = happyShift action_31
action_43 (15) = happyGoto action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (28) = happyShift action_18
action_44 (33) = happyShift action_40
action_44 (39) = happyShift action_20
action_44 (52) = happyShift action_24
action_44 (55) = happyShift action_27
action_44 (58) = happyShift action_30
action_44 (64) = happyShift action_2
action_44 (65) = happyShift action_34
action_44 (66) = happyShift action_35
action_44 (4) = happyGoto action_38
action_44 (5) = happyGoto action_6
action_44 (6) = happyGoto action_7
action_44 (17) = happyGoto action_11
action_44 (18) = happyGoto action_12
action_44 (19) = happyGoto action_13
action_44 (20) = happyGoto action_14
action_44 (21) = happyGoto action_15
action_44 (22) = happyGoto action_16
action_44 (23) = happyGoto action_91
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_23

action_46 (33) = happyShift action_67
action_46 _ = happyReduce_47

action_47 (31) = happyShift action_71
action_47 (38) = happyShift action_90
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (34) = happyShift action_89
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (33) = happyShift action_67
action_49 _ = happyReduce_48

action_50 _ = happyReduce_25

action_51 (28) = happyShift action_18
action_51 (33) = happyShift action_40
action_51 (39) = happyShift action_20
action_51 (52) = happyShift action_24
action_51 (55) = happyShift action_27
action_51 (58) = happyShift action_30
action_51 (64) = happyShift action_2
action_51 (65) = happyShift action_34
action_51 (66) = happyShift action_35
action_51 (4) = happyGoto action_38
action_51 (5) = happyGoto action_6
action_51 (6) = happyGoto action_7
action_51 (17) = happyGoto action_11
action_51 (18) = happyGoto action_12
action_51 (19) = happyGoto action_13
action_51 (20) = happyGoto action_14
action_51 (21) = happyGoto action_15
action_51 (22) = happyGoto action_16
action_51 (23) = happyGoto action_88
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (28) = happyShift action_18
action_52 (33) = happyShift action_40
action_52 (39) = happyShift action_20
action_52 (52) = happyShift action_24
action_52 (55) = happyShift action_27
action_52 (58) = happyShift action_30
action_52 (64) = happyShift action_2
action_52 (65) = happyShift action_34
action_52 (66) = happyShift action_35
action_52 (4) = happyGoto action_38
action_52 (5) = happyGoto action_6
action_52 (6) = happyGoto action_7
action_52 (17) = happyGoto action_11
action_52 (18) = happyGoto action_12
action_52 (19) = happyGoto action_13
action_52 (20) = happyGoto action_87
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_73

action_54 (28) = happyShift action_18
action_54 (33) = happyShift action_40
action_54 (39) = happyShift action_20
action_54 (52) = happyShift action_24
action_54 (55) = happyShift action_27
action_54 (58) = happyShift action_30
action_54 (64) = happyShift action_2
action_54 (65) = happyShift action_34
action_54 (66) = happyShift action_35
action_54 (4) = happyGoto action_38
action_54 (5) = happyGoto action_6
action_54 (6) = happyGoto action_7
action_54 (17) = happyGoto action_11
action_54 (18) = happyGoto action_12
action_54 (19) = happyGoto action_13
action_54 (20) = happyGoto action_14
action_54 (21) = happyGoto action_15
action_54 (22) = happyGoto action_86
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_68

action_56 _ = happyReduce_69

action_57 _ = happyReduce_72

action_58 _ = happyReduce_70

action_59 _ = happyReduce_71

action_60 (28) = happyShift action_18
action_60 (33) = happyShift action_40
action_60 (39) = happyShift action_20
action_60 (52) = happyShift action_24
action_60 (55) = happyShift action_27
action_60 (58) = happyShift action_30
action_60 (64) = happyShift action_2
action_60 (65) = happyShift action_34
action_60 (66) = happyShift action_35
action_60 (4) = happyGoto action_38
action_60 (5) = happyGoto action_6
action_60 (6) = happyGoto action_7
action_60 (17) = happyGoto action_11
action_60 (18) = happyGoto action_12
action_60 (19) = happyGoto action_85
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_63

action_62 _ = happyReduce_64

action_63 (28) = happyShift action_18
action_63 (33) = happyShift action_40
action_63 (39) = happyShift action_20
action_63 (52) = happyShift action_24
action_63 (55) = happyShift action_27
action_63 (58) = happyShift action_30
action_63 (64) = happyShift action_2
action_63 (65) = happyShift action_34
action_63 (66) = happyShift action_35
action_63 (4) = happyGoto action_38
action_63 (5) = happyGoto action_6
action_63 (6) = happyGoto action_7
action_63 (17) = happyGoto action_11
action_63 (18) = happyGoto action_84
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_67

action_65 _ = happyReduce_65

action_66 _ = happyReduce_66

action_67 (28) = happyShift action_18
action_67 (33) = happyShift action_40
action_67 (39) = happyShift action_20
action_67 (52) = happyShift action_24
action_67 (55) = happyShift action_27
action_67 (58) = happyShift action_30
action_67 (64) = happyShift action_2
action_67 (65) = happyShift action_34
action_67 (66) = happyShift action_35
action_67 (4) = happyGoto action_38
action_67 (5) = happyGoto action_6
action_67 (6) = happyGoto action_7
action_67 (17) = happyGoto action_11
action_67 (18) = happyGoto action_12
action_67 (19) = happyGoto action_13
action_67 (20) = happyGoto action_14
action_67 (21) = happyGoto action_15
action_67 (22) = happyGoto action_16
action_67 (23) = happyGoto action_82
action_67 (24) = happyGoto action_83
action_67 _ = happyReduce_60

action_68 (33) = happyShift action_80
action_68 (45) = happyShift action_81
action_68 _ = happyReduce_26

action_69 (38) = happyShift action_79
action_69 _ = happyReduce_28

action_70 (42) = happyShift action_78
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_34

action_72 (42) = happyShift action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (42) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (28) = happyShift action_18
action_74 (33) = happyShift action_40
action_74 (39) = happyShift action_20
action_74 (52) = happyShift action_24
action_74 (55) = happyShift action_27
action_74 (58) = happyShift action_30
action_74 (64) = happyShift action_2
action_74 (65) = happyShift action_34
action_74 (66) = happyShift action_35
action_74 (4) = happyGoto action_38
action_74 (5) = happyGoto action_6
action_74 (6) = happyGoto action_7
action_74 (17) = happyGoto action_11
action_74 (18) = happyGoto action_12
action_74 (19) = happyGoto action_13
action_74 (20) = happyGoto action_14
action_74 (21) = happyGoto action_15
action_74 (22) = happyGoto action_16
action_74 (23) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (42) = happyShift action_109
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_17

action_77 _ = happyReduce_16

action_78 _ = happyReduce_14

action_79 (64) = happyShift action_2
action_79 (4) = happyGoto action_107
action_79 (13) = happyGoto action_69
action_79 (14) = happyGoto action_108
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (33) = happyShift action_43
action_80 (49) = happyShift action_22
action_80 (54) = happyShift action_26
action_80 (57) = happyShift action_29
action_80 (59) = happyShift action_31
action_80 (8) = happyGoto action_104
action_80 (9) = happyGoto action_105
action_80 (15) = happyGoto action_106
action_80 _ = happyReduce_6

action_81 (28) = happyShift action_18
action_81 (33) = happyShift action_40
action_81 (39) = happyShift action_20
action_81 (52) = happyShift action_24
action_81 (55) = happyShift action_27
action_81 (58) = happyShift action_30
action_81 (64) = happyShift action_2
action_81 (65) = happyShift action_34
action_81 (66) = happyShift action_35
action_81 (4) = happyGoto action_38
action_81 (5) = happyGoto action_6
action_81 (6) = happyGoto action_7
action_81 (17) = happyGoto action_11
action_81 (18) = happyGoto action_12
action_81 (19) = happyGoto action_13
action_81 (20) = happyGoto action_14
action_81 (21) = happyGoto action_15
action_81 (22) = happyGoto action_16
action_81 (23) = happyGoto action_103
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (38) = happyShift action_102
action_82 _ = happyReduce_61

action_83 (34) = happyShift action_101
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_50

action_85 (30) = happyShift action_64
action_85 (35) = happyShift action_65
action_85 (41) = happyShift action_66
action_85 (26) = happyGoto action_63
action_85 _ = happyReduce_52

action_86 _ = happyReduce_56

action_87 (36) = happyShift action_61
action_87 (39) = happyShift action_62
action_87 (25) = happyGoto action_60
action_87 _ = happyReduce_54

action_88 _ = happyReduce_58

action_89 _ = happyReduce_46

action_90 (33) = happyShift action_43
action_90 (49) = happyShift action_22
action_90 (54) = happyShift action_26
action_90 (57) = happyShift action_29
action_90 (59) = happyShift action_31
action_90 (15) = happyGoto action_97
action_90 (16) = happyGoto action_100
action_90 _ = happyReduce_36

action_91 (34) = happyShift action_99
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (33) = happyShift action_43
action_92 (49) = happyShift action_22
action_92 (54) = happyShift action_26
action_92 (57) = happyShift action_29
action_92 (59) = happyShift action_31
action_92 (15) = happyGoto action_97
action_92 (16) = happyGoto action_98
action_92 _ = happyReduce_36

action_93 _ = happyReduce_18

action_94 (34) = happyShift action_96
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_9

action_96 (28) = happyShift action_18
action_96 (33) = happyShift action_19
action_96 (39) = happyShift action_20
action_96 (42) = happyShift action_21
action_96 (49) = happyShift action_22
action_96 (50) = happyShift action_23
action_96 (52) = happyShift action_24
action_96 (53) = happyShift action_25
action_96 (54) = happyShift action_26
action_96 (55) = happyShift action_27
action_96 (56) = happyShift action_28
action_96 (57) = happyShift action_29
action_96 (58) = happyShift action_30
action_96 (59) = happyShift action_31
action_96 (60) = happyShift action_32
action_96 (61) = happyShift action_33
action_96 (64) = happyShift action_2
action_96 (65) = happyShift action_34
action_96 (66) = happyShift action_35
action_96 (4) = happyGoto action_5
action_96 (5) = happyGoto action_6
action_96 (6) = happyGoto action_7
action_96 (10) = happyGoto action_8
action_96 (12) = happyGoto action_118
action_96 (15) = happyGoto action_10
action_96 (17) = happyGoto action_11
action_96 (18) = happyGoto action_12
action_96 (19) = happyGoto action_13
action_96 (20) = happyGoto action_14
action_96 (21) = happyGoto action_15
action_96 (22) = happyGoto action_16
action_96 (23) = happyGoto action_17
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (31) = happyShift action_71
action_97 (38) = happyShift action_117
action_97 _ = happyReduce_37

action_98 (34) = happyShift action_116
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (28) = happyShift action_18
action_99 (33) = happyShift action_19
action_99 (39) = happyShift action_20
action_99 (42) = happyShift action_21
action_99 (49) = happyShift action_22
action_99 (50) = happyShift action_23
action_99 (52) = happyShift action_24
action_99 (53) = happyShift action_25
action_99 (54) = happyShift action_26
action_99 (55) = happyShift action_27
action_99 (56) = happyShift action_28
action_99 (57) = happyShift action_29
action_99 (58) = happyShift action_30
action_99 (59) = happyShift action_31
action_99 (60) = happyShift action_32
action_99 (61) = happyShift action_33
action_99 (64) = happyShift action_2
action_99 (65) = happyShift action_34
action_99 (66) = happyShift action_35
action_99 (4) = happyGoto action_5
action_99 (5) = happyGoto action_6
action_99 (6) = happyGoto action_7
action_99 (10) = happyGoto action_8
action_99 (12) = happyGoto action_115
action_99 (15) = happyGoto action_10
action_99 (17) = happyGoto action_11
action_99 (18) = happyGoto action_12
action_99 (19) = happyGoto action_13
action_99 (20) = happyGoto action_14
action_99 (21) = happyGoto action_15
action_99 (22) = happyGoto action_16
action_99 (23) = happyGoto action_17
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (34) = happyShift action_114
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_44

action_102 (28) = happyShift action_18
action_102 (33) = happyShift action_40
action_102 (39) = happyShift action_20
action_102 (52) = happyShift action_24
action_102 (55) = happyShift action_27
action_102 (58) = happyShift action_30
action_102 (64) = happyShift action_2
action_102 (65) = happyShift action_34
action_102 (66) = happyShift action_35
action_102 (4) = happyGoto action_38
action_102 (5) = happyGoto action_6
action_102 (6) = happyGoto action_7
action_102 (17) = happyGoto action_11
action_102 (18) = happyGoto action_12
action_102 (19) = happyGoto action_13
action_102 (20) = happyGoto action_14
action_102 (21) = happyGoto action_15
action_102 (22) = happyGoto action_16
action_102 (23) = happyGoto action_82
action_102 (24) = happyGoto action_113
action_102 _ = happyReduce_60

action_103 _ = happyReduce_27

action_104 (38) = happyShift action_112
action_104 _ = happyReduce_7

action_105 (34) = happyShift action_111
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (31) = happyShift action_71
action_106 (64) = happyShift action_2
action_106 (4) = happyGoto action_110
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (45) = happyShift action_81
action_107 _ = happyReduce_26

action_108 _ = happyReduce_29

action_109 _ = happyReduce_15

action_110 _ = happyReduce_5

action_111 (61) = happyShift action_33
action_111 (10) = happyGoto action_123
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (33) = happyShift action_43
action_112 (49) = happyShift action_22
action_112 (54) = happyShift action_26
action_112 (57) = happyShift action_29
action_112 (59) = happyShift action_31
action_112 (8) = happyGoto action_104
action_112 (9) = happyGoto action_122
action_112 (15) = happyGoto action_106
action_112 _ = happyReduce_6

action_113 _ = happyReduce_62

action_114 _ = happyReduce_35

action_115 (51) = happyShift action_121
action_115 _ = happyReduce_20

action_116 (61) = happyShift action_33
action_116 (10) = happyGoto action_120
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (33) = happyShift action_43
action_117 (49) = happyShift action_22
action_117 (54) = happyShift action_26
action_117 (57) = happyShift action_29
action_117 (59) = happyShift action_31
action_117 (15) = happyGoto action_97
action_117 (16) = happyGoto action_119
action_117 _ = happyReduce_36

action_118 _ = happyReduce_22

action_119 _ = happyReduce_38

action_120 _ = happyReduce_39

action_121 (28) = happyShift action_18
action_121 (33) = happyShift action_19
action_121 (39) = happyShift action_20
action_121 (42) = happyShift action_21
action_121 (49) = happyShift action_22
action_121 (50) = happyShift action_23
action_121 (52) = happyShift action_24
action_121 (53) = happyShift action_25
action_121 (54) = happyShift action_26
action_121 (55) = happyShift action_27
action_121 (56) = happyShift action_28
action_121 (57) = happyShift action_29
action_121 (58) = happyShift action_30
action_121 (59) = happyShift action_31
action_121 (60) = happyShift action_32
action_121 (61) = happyShift action_33
action_121 (64) = happyShift action_2
action_121 (65) = happyShift action_34
action_121 (66) = happyShift action_35
action_121 (4) = happyGoto action_5
action_121 (5) = happyGoto action_6
action_121 (6) = happyGoto action_7
action_121 (10) = happyGoto action_8
action_121 (12) = happyGoto action_124
action_121 (15) = happyGoto action_10
action_121 (17) = happyGoto action_11
action_121 (18) = happyGoto action_12
action_121 (19) = happyGoto action_13
action_121 (20) = happyGoto action_14
action_121 (21) = happyGoto action_15
action_121 (22) = happyGoto action_16
action_121 (23) = happyGoto action_17
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_8

action_123 _ = happyReduce_24

action_124 _ = happyReduce_21

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
happyReduction_4 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn7
		 (AbsGram.Program (reverse happy_var_1)
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  8 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn8
		 (AbsGram.Arg happy_var_1 happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_0  9 happyReduction_6
happyReduction_6  =  HappyAbsSyn9
		 ([]
	)

happyReduce_7 = happySpecReduce_1  9 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ((:[]) happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  9 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn9
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  10 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (AbsGram.Block (reverse happy_var_2)
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_0  11 happyReduction_10
happyReduction_10  =  HappyAbsSyn11
		 ([]
	)

happyReduce_11 = happySpecReduce_2  11 happyReduction_11
happyReduction_11 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  12 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn12
		 (AbsGram.Empty
	)

happyReduce_13 = happySpecReduce_1  12 happyReduction_13
happyReduction_13 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn12
		 (AbsGram.BStmt happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  12 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (AbsGram.Decl happy_var_1 happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 4 12 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AbsGram.Ass happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  12 happyReduction_16
happyReduction_16 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn12
		 (AbsGram.Incr happy_var_1
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn12
		 (AbsGram.Decr happy_var_1
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  12 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (AbsGram.Ret happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  12 happyReduction_19
happyReduction_19 _
	_
	 =  HappyAbsSyn12
		 (AbsGram.VRet
	)

happyReduce_20 = happyReduce 5 12 happyReduction_20
happyReduction_20 ((HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AbsGram.Cond happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 7 12 happyReduction_21
happyReduction_21 ((HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AbsGram.CondElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 12 happyReduction_22
happyReduction_22 ((HappyAbsSyn12  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AbsGram.While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  12 happyReduction_23
happyReduction_23 _
	_
	 =  HappyAbsSyn12
		 (AbsGram.Debug
	)

happyReduce_24 = happyReduce 6 12 happyReduction_24
happyReduction_24 ((HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	(HappyAbsSyn15  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (AbsGram.FnDef happy_var_1 happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_2  12 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn12
		 (AbsGram.SExp happy_var_1
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn13
		 (AbsGram.NoInit happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn13
		 (AbsGram.Init happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  14 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 ((:[]) happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  15 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn15
		 (AbsGram.Int
	)

happyReduce_31 = happySpecReduce_1  15 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn15
		 (AbsGram.Str
	)

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn15
		 (AbsGram.Bool
	)

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn15
		 (AbsGram.Void
	)

happyReduce_34 = happySpecReduce_2  15 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.Ref happy_var_1
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 5 15 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AbsGram.Fun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_0  16 happyReduction_36
happyReduction_36  =  HappyAbsSyn16
		 ([]
	)

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 ((:[]) happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn16
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happyReduce 6 17 happyReduction_39
happyReduction_39 ((HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AbsGram.ELam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_1  17 happyReduction_40
happyReduction_40 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EVar happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  17 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.ELitInt happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  17 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn17
		 (AbsGram.ELitTrue
	)

happyReduce_43 = happySpecReduce_1  17 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn17
		 (AbsGram.ELitFalse
	)

happyReduce_44 = happyReduce 4 17 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn24  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (AbsGram.EApp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_45 = happySpecReduce_1  17 happyReduction_45
happyReduction_45 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EString happy_var_1
	)
happyReduction_45 _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_2  18 happyReduction_47
happyReduction_47 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (AbsGram.Neg happy_var_2
	)
happyReduction_47 _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  18 happyReduction_48
happyReduction_48 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (AbsGram.Not happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_1  18 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  19 happyReduction_50
happyReduction_50 (HappyAbsSyn17  happy_var_3)
	(HappyAbsSyn26  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EMul happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_1  19 happyReduction_51
happyReduction_51 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  20 happyReduction_52
happyReduction_52 (HappyAbsSyn17  happy_var_3)
	(HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EAdd happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  20 happyReduction_53
happyReduction_53 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_53 _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  21 happyReduction_54
happyReduction_54 (HappyAbsSyn17  happy_var_3)
	(HappyAbsSyn27  happy_var_2)
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.ERel happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  21 happyReduction_55
happyReduction_55 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  22 happyReduction_56
happyReduction_56 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  22 happyReduction_57
happyReduction_57 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_3  23 happyReduction_58
happyReduction_58 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_58 _ _ _  = notHappyAtAll 

happyReduce_59 = happySpecReduce_1  23 happyReduction_59
happyReduction_59 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_59 _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_0  24 happyReduction_60
happyReduction_60  =  HappyAbsSyn24
		 ([]
	)

happyReduce_61 = happySpecReduce_1  24 happyReduction_61
happyReduction_61 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn24
		 ((:[]) happy_var_1
	)
happyReduction_61 _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  24 happyReduction_62
happyReduction_62 (HappyAbsSyn24  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn24
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyReduce_63 = happySpecReduce_1  25 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn25
		 (AbsGram.Plus
	)

happyReduce_64 = happySpecReduce_1  25 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn25
		 (AbsGram.Minus
	)

happyReduce_65 = happySpecReduce_1  26 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn26
		 (AbsGram.Times
	)

happyReduce_66 = happySpecReduce_1  26 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn26
		 (AbsGram.Div
	)

happyReduce_67 = happySpecReduce_1  26 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn26
		 (AbsGram.Mod
	)

happyReduce_68 = happySpecReduce_1  27 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn27
		 (AbsGram.LTH
	)

happyReduce_69 = happySpecReduce_1  27 happyReduction_69
happyReduction_69 _
	 =  HappyAbsSyn27
		 (AbsGram.LE
	)

happyReduce_70 = happySpecReduce_1  27 happyReduction_70
happyReduction_70 _
	 =  HappyAbsSyn27
		 (AbsGram.GTH
	)

happyReduce_71 = happySpecReduce_1  27 happyReduction_71
happyReduction_71 _
	 =  HappyAbsSyn27
		 (AbsGram.GE
	)

happyReduce_72 = happySpecReduce_1  27 happyReduction_72
happyReduction_72 _
	 =  HappyAbsSyn27
		 (AbsGram.EQU
	)

happyReduce_73 = happySpecReduce_1  27 happyReduction_73
happyReduction_73 _
	 =  HappyAbsSyn27
		 (AbsGram.NE
	)

happyNewToken action sts stk [] =
	action 67 67 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 28;
	PT _ (TS _ 2) -> cont 29;
	PT _ (TS _ 3) -> cont 30;
	PT _ (TS _ 4) -> cont 31;
	PT _ (TS _ 5) -> cont 32;
	PT _ (TS _ 6) -> cont 33;
	PT _ (TS _ 7) -> cont 34;
	PT _ (TS _ 8) -> cont 35;
	PT _ (TS _ 9) -> cont 36;
	PT _ (TS _ 10) -> cont 37;
	PT _ (TS _ 11) -> cont 38;
	PT _ (TS _ 12) -> cont 39;
	PT _ (TS _ 13) -> cont 40;
	PT _ (TS _ 14) -> cont 41;
	PT _ (TS _ 15) -> cont 42;
	PT _ (TS _ 16) -> cont 43;
	PT _ (TS _ 17) -> cont 44;
	PT _ (TS _ 18) -> cont 45;
	PT _ (TS _ 19) -> cont 46;
	PT _ (TS _ 20) -> cont 47;
	PT _ (TS _ 21) -> cont 48;
	PT _ (TS _ 22) -> cont 49;
	PT _ (TS _ 23) -> cont 50;
	PT _ (TS _ 24) -> cont 51;
	PT _ (TS _ 25) -> cont 52;
	PT _ (TS _ 26) -> cont 53;
	PT _ (TS _ 27) -> cont 54;
	PT _ (TS _ 28) -> cont 55;
	PT _ (TS _ 29) -> cont 56;
	PT _ (TS _ 30) -> cont 57;
	PT _ (TS _ 31) -> cont 58;
	PT _ (TS _ 32) -> cont 59;
	PT _ (TS _ 33) -> cont 60;
	PT _ (TS _ 34) -> cont 61;
	PT _ (TS _ 35) -> cont 62;
	PT _ (TS _ 36) -> cont 63;
	PT _ (TV happy_dollar_dollar) -> cont 64;
	PT _ (TI happy_dollar_dollar) -> cont 65;
	PT _ (TL happy_dollar_dollar) -> cont 66;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 67 tk tks = happyError' (tks, explist)
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
