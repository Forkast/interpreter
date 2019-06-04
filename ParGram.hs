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
	| HappyAbsSyn8 (Block)
	| HappyAbsSyn9 ([Stmt])
	| HappyAbsSyn10 (Stmt)
	| HappyAbsSyn11 (Item)
	| HappyAbsSyn12 ([Item])
	| HappyAbsSyn13 (Type)
	| HappyAbsSyn14 ([Type])
	| HappyAbsSyn15 (Expr)
	| HappyAbsSyn22 ([Expr])
	| HappyAbsSyn23 (AddOp)
	| HappyAbsSyn24 (MulOp)
	| HappyAbsSyn25 (RelOp)

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
 action_114 :: () => Int -> ({-HappyReduction (Err) = -}
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
 happyReduce_68 :: () => ({-HappyReduction (Err) = -}
	   Int 
	-> (Token)
	-> HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)
	-> [HappyState (Token) (HappyStk HappyAbsSyn -> [(Token)] -> (Err) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(Token)] -> (Err) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,420) ([0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,8192,2308,32748,14,0,33928,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,128,0,0,0,0,0,0,0,0,0,8448,8,0,0,32768,4,0,0,4608,7552,0,0,0,0,2048,0,0,256,0,0,0,1,33352,3,4096,130,3794,7,0,4,2336,14,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0,512,16896,10,0,1056,8201,3593,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,2308,32748,15,16384,520,4672,28,0,16,0,0,0,16384,0,0,0,4162,37376,224,0,0,0,0,0,8256,0,0,0,512,16896,10,0,1056,8193,3593,0,0,0,0,0,0,0,0,0,2048,4,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,4096,130,1168,7,8192,260,2336,14,0,0,0,0,32768,1040,9344,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1056,8193,3593,0,0,0,0,0,0,0,0,0,8448,8,28745,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,128,0,0,0,4096,0,0,0,0,0,0,0,2081,18688,112,0,32768,0,0,0,0,1,0,0,16648,18432,898,0,0,4,0,0,0,0,0,0,0,0,0,0,0,2,0,0,16384,0,0,0,0,0,0,0,0,0,16384,0,2048,65,33352,3,0,0,0,0,32768,1040,0,0,0,0,0,0,0,1152,0,0,0,0,0,0,0,0,0,0,0,128,36992,2,0,512,0,0,0,512,16896,10,0,0,0,0,0,4096,0,0,0,0,0,0,0,8448,24648,29695,0,4096,8,0,0,0,1,0,0,2048,577,40955,3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2081,18688,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,2048,2048,41,0,0,0,0,0,0,0,0,0,0,0,0,0,33792,33056,53245,1,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_pProgram","Ident","Integer","String","Program","Block","ListStmt","Stmt","Item","ListItem","Type","ListType","Expr6","Expr5","Expr4","Expr3","Expr2","Expr1","Expr","ListExpr","AddOp","MulOp","RelOp","'!'","'!='","'%'","'&'","'&&'","'('","')'","'*'","'+'","'++'","','","'-'","'--'","'/'","';'","'<'","'<='","'='","'=='","'>'","'>='","'bool'","'debug'","'else'","'false'","'if'","'int'","'lambda('","'return'","'string'","'true'","'void'","'while'","'{'","'||'","'}'","L_ident","L_integ","L_quoted","%eof"]
        bit_start = st * 65
        bit_end = (st + 1) * 65
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..64]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyGoto action_3
action_0 (9) = happyGoto action_4
action_0 _ = happyReduce_6

action_1 (62) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (65) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_18
action_4 (31) = happyShift action_19
action_4 (37) = happyShift action_20
action_4 (40) = happyShift action_21
action_4 (47) = happyShift action_22
action_4 (48) = happyShift action_23
action_4 (50) = happyShift action_24
action_4 (51) = happyShift action_25
action_4 (52) = happyShift action_26
action_4 (53) = happyShift action_27
action_4 (54) = happyShift action_28
action_4 (55) = happyShift action_29
action_4 (56) = happyShift action_30
action_4 (57) = happyShift action_31
action_4 (58) = happyShift action_32
action_4 (59) = happyShift action_33
action_4 (62) = happyShift action_2
action_4 (63) = happyShift action_34
action_4 (64) = happyShift action_35
action_4 (4) = happyGoto action_5
action_4 (5) = happyGoto action_6
action_4 (6) = happyGoto action_7
action_4 (8) = happyGoto action_8
action_4 (10) = happyGoto action_9
action_4 (13) = happyGoto action_10
action_4 (15) = happyGoto action_11
action_4 (16) = happyGoto action_12
action_4 (17) = happyGoto action_13
action_4 (18) = happyGoto action_14
action_4 (19) = happyGoto action_15
action_4 (20) = happyGoto action_16
action_4 (21) = happyGoto action_17
action_4 _ = happyReduce_4

action_5 (31) = happyShift action_71
action_5 (35) = happyShift action_72
action_5 (38) = happyShift action_73
action_5 (43) = happyShift action_74
action_5 _ = happyReduce_35

action_6 _ = happyReduce_36

action_7 _ = happyReduce_40

action_8 _ = happyReduce_9

action_9 _ = happyReduce_7

action_10 (29) = happyShift action_70
action_10 (62) = happyShift action_2
action_10 (4) = happyGoto action_67
action_10 (11) = happyGoto action_68
action_10 (12) = happyGoto action_69
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_44

action_12 _ = happyReduce_46

action_13 (28) = happyShift action_64
action_13 (33) = happyShift action_65
action_13 (39) = happyShift action_66
action_13 (24) = happyGoto action_63
action_13 _ = happyReduce_48

action_14 (34) = happyShift action_61
action_14 (37) = happyShift action_62
action_14 (23) = happyGoto action_60
action_14 _ = happyReduce_50

action_15 (27) = happyShift action_53
action_15 (30) = happyShift action_54
action_15 (41) = happyShift action_55
action_15 (42) = happyShift action_56
action_15 (44) = happyShift action_57
action_15 (45) = happyShift action_58
action_15 (46) = happyShift action_59
action_15 (25) = happyGoto action_52
action_15 _ = happyReduce_52

action_16 (60) = happyShift action_51
action_16 _ = happyReduce_54

action_17 (40) = happyShift action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (31) = happyShift action_40
action_18 (50) = happyShift action_24
action_18 (53) = happyShift action_27
action_18 (56) = happyShift action_30
action_18 (62) = happyShift action_2
action_18 (63) = happyShift action_34
action_18 (64) = happyShift action_35
action_18 (4) = happyGoto action_38
action_18 (5) = happyGoto action_6
action_18 (6) = happyGoto action_7
action_18 (15) = happyGoto action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (26) = happyShift action_18
action_19 (31) = happyShift action_19
action_19 (37) = happyShift action_20
action_19 (47) = happyShift action_22
action_19 (50) = happyShift action_24
action_19 (52) = happyShift action_26
action_19 (53) = happyShift action_27
action_19 (55) = happyShift action_29
action_19 (56) = happyShift action_30
action_19 (57) = happyShift action_31
action_19 (62) = happyShift action_2
action_19 (63) = happyShift action_34
action_19 (64) = happyShift action_35
action_19 (4) = happyGoto action_38
action_19 (5) = happyGoto action_6
action_19 (6) = happyGoto action_7
action_19 (13) = happyGoto action_47
action_19 (15) = happyGoto action_11
action_19 (16) = happyGoto action_12
action_19 (17) = happyGoto action_13
action_19 (18) = happyGoto action_14
action_19 (19) = happyGoto action_15
action_19 (20) = happyGoto action_16
action_19 (21) = happyGoto action_48
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (31) = happyShift action_40
action_20 (50) = happyShift action_24
action_20 (53) = happyShift action_27
action_20 (56) = happyShift action_30
action_20 (62) = happyShift action_2
action_20 (63) = happyShift action_34
action_20 (64) = happyShift action_35
action_20 (4) = happyGoto action_38
action_20 (5) = happyGoto action_6
action_20 (6) = happyGoto action_7
action_20 (15) = happyGoto action_46
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_8

action_22 _ = happyReduce_27

action_23 (40) = happyShift action_45
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_38

action_25 (31) = happyShift action_44
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_25

action_27 (31) = happyShift action_43
action_27 (47) = happyShift action_22
action_27 (52) = happyShift action_26
action_27 (55) = happyShift action_29
action_27 (57) = happyShift action_31
action_27 (13) = happyGoto action_42
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (26) = happyShift action_18
action_28 (31) = happyShift action_40
action_28 (37) = happyShift action_20
action_28 (40) = happyShift action_41
action_28 (50) = happyShift action_24
action_28 (53) = happyShift action_27
action_28 (56) = happyShift action_30
action_28 (62) = happyShift action_2
action_28 (63) = happyShift action_34
action_28 (64) = happyShift action_35
action_28 (4) = happyGoto action_38
action_28 (5) = happyGoto action_6
action_28 (6) = happyGoto action_7
action_28 (15) = happyGoto action_11
action_28 (16) = happyGoto action_12
action_28 (17) = happyGoto action_13
action_28 (18) = happyGoto action_14
action_28 (19) = happyGoto action_15
action_28 (20) = happyGoto action_16
action_28 (21) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_26

action_30 _ = happyReduce_37

action_31 _ = happyReduce_28

action_32 (31) = happyShift action_37
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (9) = happyGoto action_36
action_33 _ = happyReduce_6

action_34 _ = happyReduce_2

action_35 _ = happyReduce_3

action_36 (26) = happyShift action_18
action_36 (31) = happyShift action_19
action_36 (37) = happyShift action_20
action_36 (40) = happyShift action_21
action_36 (47) = happyShift action_22
action_36 (48) = happyShift action_23
action_36 (50) = happyShift action_24
action_36 (51) = happyShift action_25
action_36 (52) = happyShift action_26
action_36 (53) = happyShift action_27
action_36 (54) = happyShift action_28
action_36 (55) = happyShift action_29
action_36 (56) = happyShift action_30
action_36 (57) = happyShift action_31
action_36 (58) = happyShift action_32
action_36 (59) = happyShift action_33
action_36 (61) = happyShift action_94
action_36 (62) = happyShift action_2
action_36 (63) = happyShift action_34
action_36 (64) = happyShift action_35
action_36 (4) = happyGoto action_5
action_36 (5) = happyGoto action_6
action_36 (6) = happyGoto action_7
action_36 (8) = happyGoto action_8
action_36 (10) = happyGoto action_9
action_36 (13) = happyGoto action_10
action_36 (15) = happyGoto action_11
action_36 (16) = happyGoto action_12
action_36 (17) = happyGoto action_13
action_36 (18) = happyGoto action_14
action_36 (19) = happyGoto action_15
action_36 (20) = happyGoto action_16
action_36 (21) = happyGoto action_17
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (26) = happyShift action_18
action_37 (31) = happyShift action_40
action_37 (37) = happyShift action_20
action_37 (50) = happyShift action_24
action_37 (53) = happyShift action_27
action_37 (56) = happyShift action_30
action_37 (62) = happyShift action_2
action_37 (63) = happyShift action_34
action_37 (64) = happyShift action_35
action_37 (4) = happyGoto action_38
action_37 (5) = happyGoto action_6
action_37 (6) = happyGoto action_7
action_37 (15) = happyGoto action_11
action_37 (16) = happyGoto action_12
action_37 (17) = happyGoto action_13
action_37 (18) = happyGoto action_14
action_37 (19) = happyGoto action_15
action_37 (20) = happyGoto action_16
action_37 (21) = happyGoto action_93
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (31) = happyShift action_71
action_38 _ = happyReduce_35

action_39 (40) = happyShift action_92
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (26) = happyShift action_18
action_40 (31) = happyShift action_40
action_40 (37) = happyShift action_20
action_40 (50) = happyShift action_24
action_40 (53) = happyShift action_27
action_40 (56) = happyShift action_30
action_40 (62) = happyShift action_2
action_40 (63) = happyShift action_34
action_40 (64) = happyShift action_35
action_40 (4) = happyGoto action_38
action_40 (5) = happyGoto action_6
action_40 (6) = happyGoto action_7
action_40 (15) = happyGoto action_11
action_40 (16) = happyGoto action_12
action_40 (17) = happyGoto action_13
action_40 (18) = happyGoto action_14
action_40 (19) = happyGoto action_15
action_40 (20) = happyGoto action_16
action_40 (21) = happyGoto action_48
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_15

action_42 (29) = happyShift action_70
action_42 (36) = happyShift action_91
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (31) = happyShift action_43
action_43 (47) = happyShift action_22
action_43 (52) = happyShift action_26
action_43 (55) = happyShift action_29
action_43 (57) = happyShift action_31
action_43 (13) = happyGoto action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (26) = happyShift action_18
action_44 (31) = happyShift action_40
action_44 (37) = happyShift action_20
action_44 (50) = happyShift action_24
action_44 (53) = happyShift action_27
action_44 (56) = happyShift action_30
action_44 (62) = happyShift action_2
action_44 (63) = happyShift action_34
action_44 (64) = happyShift action_35
action_44 (4) = happyGoto action_38
action_44 (5) = happyGoto action_6
action_44 (6) = happyGoto action_7
action_44 (15) = happyGoto action_11
action_44 (16) = happyGoto action_12
action_44 (17) = happyGoto action_13
action_44 (18) = happyGoto action_14
action_44 (19) = happyGoto action_15
action_44 (20) = happyGoto action_16
action_44 (21) = happyGoto action_90
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_19

action_46 _ = happyReduce_42

action_47 (29) = happyShift action_70
action_47 (36) = happyShift action_89
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (32) = happyShift action_88
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_43

action_50 _ = happyReduce_20

action_51 (26) = happyShift action_18
action_51 (31) = happyShift action_40
action_51 (37) = happyShift action_20
action_51 (50) = happyShift action_24
action_51 (53) = happyShift action_27
action_51 (56) = happyShift action_30
action_51 (62) = happyShift action_2
action_51 (63) = happyShift action_34
action_51 (64) = happyShift action_35
action_51 (4) = happyGoto action_38
action_51 (5) = happyGoto action_6
action_51 (6) = happyGoto action_7
action_51 (15) = happyGoto action_11
action_51 (16) = happyGoto action_12
action_51 (17) = happyGoto action_13
action_51 (18) = happyGoto action_14
action_51 (19) = happyGoto action_15
action_51 (20) = happyGoto action_16
action_51 (21) = happyGoto action_87
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (26) = happyShift action_18
action_52 (31) = happyShift action_40
action_52 (37) = happyShift action_20
action_52 (50) = happyShift action_24
action_52 (53) = happyShift action_27
action_52 (56) = happyShift action_30
action_52 (62) = happyShift action_2
action_52 (63) = happyShift action_34
action_52 (64) = happyShift action_35
action_52 (4) = happyGoto action_38
action_52 (5) = happyGoto action_6
action_52 (6) = happyGoto action_7
action_52 (15) = happyGoto action_11
action_52 (16) = happyGoto action_12
action_52 (17) = happyGoto action_13
action_52 (18) = happyGoto action_86
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_68

action_54 (26) = happyShift action_18
action_54 (31) = happyShift action_40
action_54 (37) = happyShift action_20
action_54 (50) = happyShift action_24
action_54 (53) = happyShift action_27
action_54 (56) = happyShift action_30
action_54 (62) = happyShift action_2
action_54 (63) = happyShift action_34
action_54 (64) = happyShift action_35
action_54 (4) = happyGoto action_38
action_54 (5) = happyGoto action_6
action_54 (6) = happyGoto action_7
action_54 (15) = happyGoto action_11
action_54 (16) = happyGoto action_12
action_54 (17) = happyGoto action_13
action_54 (18) = happyGoto action_14
action_54 (19) = happyGoto action_15
action_54 (20) = happyGoto action_85
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_63

action_56 _ = happyReduce_64

action_57 _ = happyReduce_67

action_58 _ = happyReduce_65

action_59 _ = happyReduce_66

action_60 (26) = happyShift action_18
action_60 (31) = happyShift action_40
action_60 (37) = happyShift action_20
action_60 (50) = happyShift action_24
action_60 (53) = happyShift action_27
action_60 (56) = happyShift action_30
action_60 (62) = happyShift action_2
action_60 (63) = happyShift action_34
action_60 (64) = happyShift action_35
action_60 (4) = happyGoto action_38
action_60 (5) = happyGoto action_6
action_60 (6) = happyGoto action_7
action_60 (15) = happyGoto action_11
action_60 (16) = happyGoto action_12
action_60 (17) = happyGoto action_84
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_58

action_62 _ = happyReduce_59

action_63 (26) = happyShift action_18
action_63 (31) = happyShift action_40
action_63 (37) = happyShift action_20
action_63 (50) = happyShift action_24
action_63 (53) = happyShift action_27
action_63 (56) = happyShift action_30
action_63 (62) = happyShift action_2
action_63 (63) = happyShift action_34
action_63 (64) = happyShift action_35
action_63 (4) = happyGoto action_38
action_63 (5) = happyGoto action_6
action_63 (6) = happyGoto action_7
action_63 (15) = happyGoto action_11
action_63 (16) = happyGoto action_83
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_62

action_65 _ = happyReduce_60

action_66 _ = happyReduce_61

action_67 (43) = happyShift action_82
action_67 _ = happyReduce_21

action_68 (36) = happyShift action_81
action_68 _ = happyReduce_23

action_69 (40) = happyShift action_80
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_29

action_71 (26) = happyShift action_18
action_71 (31) = happyShift action_40
action_71 (37) = happyShift action_20
action_71 (50) = happyShift action_24
action_71 (53) = happyShift action_27
action_71 (56) = happyShift action_30
action_71 (62) = happyShift action_2
action_71 (63) = happyShift action_34
action_71 (64) = happyShift action_35
action_71 (4) = happyGoto action_38
action_71 (5) = happyGoto action_6
action_71 (6) = happyGoto action_7
action_71 (15) = happyGoto action_11
action_71 (16) = happyGoto action_12
action_71 (17) = happyGoto action_13
action_71 (18) = happyGoto action_14
action_71 (19) = happyGoto action_15
action_71 (20) = happyGoto action_16
action_71 (21) = happyGoto action_78
action_71 (22) = happyGoto action_79
action_71 _ = happyReduce_55

action_72 (40) = happyShift action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (40) = happyShift action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (26) = happyShift action_18
action_74 (31) = happyShift action_40
action_74 (37) = happyShift action_20
action_74 (50) = happyShift action_24
action_74 (53) = happyShift action_27
action_74 (56) = happyShift action_30
action_74 (62) = happyShift action_2
action_74 (63) = happyShift action_34
action_74 (64) = happyShift action_35
action_74 (4) = happyGoto action_38
action_74 (5) = happyGoto action_6
action_74 (6) = happyGoto action_7
action_74 (15) = happyGoto action_11
action_74 (16) = happyGoto action_12
action_74 (17) = happyGoto action_13
action_74 (18) = happyGoto action_14
action_74 (19) = happyGoto action_15
action_74 (20) = happyGoto action_16
action_74 (21) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (40) = happyShift action_104
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_13

action_77 _ = happyReduce_12

action_78 (36) = happyShift action_103
action_78 _ = happyReduce_56

action_79 (32) = happyShift action_102
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_10

action_81 (62) = happyShift action_2
action_81 (4) = happyGoto action_67
action_81 (11) = happyGoto action_68
action_81 (12) = happyGoto action_101
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (26) = happyShift action_18
action_82 (31) = happyShift action_40
action_82 (37) = happyShift action_20
action_82 (50) = happyShift action_24
action_82 (53) = happyShift action_27
action_82 (56) = happyShift action_30
action_82 (62) = happyShift action_2
action_82 (63) = happyShift action_34
action_82 (64) = happyShift action_35
action_82 (4) = happyGoto action_38
action_82 (5) = happyGoto action_6
action_82 (6) = happyGoto action_7
action_82 (15) = happyGoto action_11
action_82 (16) = happyGoto action_12
action_82 (17) = happyGoto action_13
action_82 (18) = happyGoto action_14
action_82 (19) = happyGoto action_15
action_82 (20) = happyGoto action_16
action_82 (21) = happyGoto action_100
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_45

action_84 (28) = happyShift action_64
action_84 (33) = happyShift action_65
action_84 (39) = happyShift action_66
action_84 (24) = happyGoto action_63
action_84 _ = happyReduce_47

action_85 _ = happyReduce_51

action_86 (34) = happyShift action_61
action_86 (37) = happyShift action_62
action_86 (23) = happyGoto action_60
action_86 _ = happyReduce_49

action_87 _ = happyReduce_53

action_88 _ = happyReduce_41

action_89 (31) = happyShift action_43
action_89 (47) = happyShift action_22
action_89 (52) = happyShift action_26
action_89 (55) = happyShift action_29
action_89 (57) = happyShift action_31
action_89 (13) = happyGoto action_96
action_89 (14) = happyGoto action_99
action_89 _ = happyReduce_31

action_90 (32) = happyShift action_98
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (31) = happyShift action_43
action_91 (47) = happyShift action_22
action_91 (52) = happyShift action_26
action_91 (55) = happyShift action_29
action_91 (57) = happyShift action_31
action_91 (13) = happyGoto action_96
action_91 (14) = happyGoto action_97
action_91 _ = happyReduce_31

action_92 _ = happyReduce_14

action_93 (32) = happyShift action_95
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_5

action_95 (26) = happyShift action_18
action_95 (31) = happyShift action_19
action_95 (37) = happyShift action_20
action_95 (40) = happyShift action_21
action_95 (47) = happyShift action_22
action_95 (48) = happyShift action_23
action_95 (50) = happyShift action_24
action_95 (51) = happyShift action_25
action_95 (52) = happyShift action_26
action_95 (53) = happyShift action_27
action_95 (54) = happyShift action_28
action_95 (55) = happyShift action_29
action_95 (56) = happyShift action_30
action_95 (57) = happyShift action_31
action_95 (58) = happyShift action_32
action_95 (59) = happyShift action_33
action_95 (62) = happyShift action_2
action_95 (63) = happyShift action_34
action_95 (64) = happyShift action_35
action_95 (4) = happyGoto action_5
action_95 (5) = happyGoto action_6
action_95 (6) = happyGoto action_7
action_95 (8) = happyGoto action_8
action_95 (10) = happyGoto action_110
action_95 (13) = happyGoto action_10
action_95 (15) = happyGoto action_11
action_95 (16) = happyGoto action_12
action_95 (17) = happyGoto action_13
action_95 (18) = happyGoto action_14
action_95 (19) = happyGoto action_15
action_95 (20) = happyGoto action_16
action_95 (21) = happyGoto action_17
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (29) = happyShift action_70
action_96 (36) = happyShift action_109
action_96 _ = happyReduce_32

action_97 (32) = happyShift action_108
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (26) = happyShift action_18
action_98 (31) = happyShift action_19
action_98 (37) = happyShift action_20
action_98 (40) = happyShift action_21
action_98 (47) = happyShift action_22
action_98 (48) = happyShift action_23
action_98 (50) = happyShift action_24
action_98 (51) = happyShift action_25
action_98 (52) = happyShift action_26
action_98 (53) = happyShift action_27
action_98 (54) = happyShift action_28
action_98 (55) = happyShift action_29
action_98 (56) = happyShift action_30
action_98 (57) = happyShift action_31
action_98 (58) = happyShift action_32
action_98 (59) = happyShift action_33
action_98 (62) = happyShift action_2
action_98 (63) = happyShift action_34
action_98 (64) = happyShift action_35
action_98 (4) = happyGoto action_5
action_98 (5) = happyGoto action_6
action_98 (6) = happyGoto action_7
action_98 (8) = happyGoto action_8
action_98 (10) = happyGoto action_107
action_98 (13) = happyGoto action_10
action_98 (15) = happyGoto action_11
action_98 (16) = happyGoto action_12
action_98 (17) = happyGoto action_13
action_98 (18) = happyGoto action_14
action_98 (19) = happyGoto action_15
action_98 (20) = happyGoto action_16
action_98 (21) = happyGoto action_17
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (32) = happyShift action_106
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_22

action_101 _ = happyReduce_24

action_102 _ = happyReduce_39

action_103 (26) = happyShift action_18
action_103 (31) = happyShift action_40
action_103 (37) = happyShift action_20
action_103 (50) = happyShift action_24
action_103 (53) = happyShift action_27
action_103 (56) = happyShift action_30
action_103 (62) = happyShift action_2
action_103 (63) = happyShift action_34
action_103 (64) = happyShift action_35
action_103 (4) = happyGoto action_38
action_103 (5) = happyGoto action_6
action_103 (6) = happyGoto action_7
action_103 (15) = happyGoto action_11
action_103 (16) = happyGoto action_12
action_103 (17) = happyGoto action_13
action_103 (18) = happyGoto action_14
action_103 (19) = happyGoto action_15
action_103 (20) = happyGoto action_16
action_103 (21) = happyGoto action_78
action_103 (22) = happyGoto action_105
action_103 _ = happyReduce_55

action_104 _ = happyReduce_11

action_105 _ = happyReduce_57

action_106 _ = happyReduce_30

action_107 (49) = happyShift action_113
action_107 _ = happyReduce_16

action_108 (59) = happyShift action_33
action_108 (8) = happyGoto action_112
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (31) = happyShift action_43
action_109 (47) = happyShift action_22
action_109 (52) = happyShift action_26
action_109 (55) = happyShift action_29
action_109 (57) = happyShift action_31
action_109 (13) = happyGoto action_96
action_109 (14) = happyGoto action_111
action_109 _ = happyReduce_31

action_110 _ = happyReduce_18

action_111 _ = happyReduce_33

action_112 _ = happyReduce_34

action_113 (26) = happyShift action_18
action_113 (31) = happyShift action_19
action_113 (37) = happyShift action_20
action_113 (40) = happyShift action_21
action_113 (47) = happyShift action_22
action_113 (48) = happyShift action_23
action_113 (50) = happyShift action_24
action_113 (51) = happyShift action_25
action_113 (52) = happyShift action_26
action_113 (53) = happyShift action_27
action_113 (54) = happyShift action_28
action_113 (55) = happyShift action_29
action_113 (56) = happyShift action_30
action_113 (57) = happyShift action_31
action_113 (58) = happyShift action_32
action_113 (59) = happyShift action_33
action_113 (62) = happyShift action_2
action_113 (63) = happyShift action_34
action_113 (64) = happyShift action_35
action_113 (4) = happyGoto action_5
action_113 (5) = happyGoto action_6
action_113 (6) = happyGoto action_7
action_113 (8) = happyGoto action_8
action_113 (10) = happyGoto action_114
action_113 (13) = happyGoto action_10
action_113 (15) = happyGoto action_11
action_113 (16) = happyGoto action_12
action_113 (17) = happyGoto action_13
action_113 (18) = happyGoto action_14
action_113 (19) = happyGoto action_15
action_113 (20) = happyGoto action_16
action_113 (21) = happyGoto action_17
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_17

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
		 (AbsGram.Program (reverse happy_var_1)
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  8 happyReduction_5
happyReduction_5 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (AbsGram.Block (reverse happy_var_2)
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_0  9 happyReduction_6
happyReduction_6  =  HappyAbsSyn9
		 ([]
	)

happyReduce_7 = happySpecReduce_2  9 happyReduction_7
happyReduction_7 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (flip (:) happy_var_1 happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  10 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn10
		 (AbsGram.Empty
	)

happyReduce_9 = happySpecReduce_1  10 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.BStmt happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  10 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.Decl happy_var_1 happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 4 10 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AbsGram.Ass happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  10 happyReduction_12
happyReduction_12 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.Incr happy_var_1
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  10 happyReduction_13
happyReduction_13 _
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.Decr happy_var_1
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  10 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (AbsGram.Ret happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  10 happyReduction_15
happyReduction_15 _
	_
	 =  HappyAbsSyn10
		 (AbsGram.VRet
	)

happyReduce_16 = happyReduce 5 10 happyReduction_16
happyReduction_16 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AbsGram.Cond happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 7 10 happyReduction_17
happyReduction_17 ((HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AbsGram.CondElse happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 5 10 happyReduction_18
happyReduction_18 ((HappyAbsSyn10  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (AbsGram.While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  10 happyReduction_19
happyReduction_19 _
	_
	 =  HappyAbsSyn10
		 (AbsGram.Debug
	)

happyReduce_20 = happySpecReduce_2  10 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn10
		 (AbsGram.SExp happy_var_1
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn11
		 (AbsGram.NoInit happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  11 happyReduction_22
happyReduction_22 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn11
		 (AbsGram.Init happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 ((:[]) happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn13
		 (AbsGram.Int
	)

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn13
		 (AbsGram.Str
	)

happyReduce_27 = happySpecReduce_1  13 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn13
		 (AbsGram.Bool
	)

happyReduce_28 = happySpecReduce_1  13 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn13
		 (AbsGram.Void
	)

happyReduce_29 = happySpecReduce_2  13 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (AbsGram.Ref happy_var_1
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happyReduce 5 13 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (AbsGram.Fun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_0  14 happyReduction_31
happyReduction_31  =  HappyAbsSyn14
		 ([]
	)

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 ((:[]) happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 6 15 happyReduction_34
happyReduction_34 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AbsGram.ELam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_1  15 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EVar happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  15 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.ELitInt happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  15 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn15
		 (AbsGram.ELitTrue
	)

happyReduce_38 = happySpecReduce_1  15 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn15
		 (AbsGram.ELitFalse
	)

happyReduce_39 = happyReduce 4 15 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn22  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (AbsGram.EApp happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_1  15 happyReduction_40
happyReduction_40 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EString happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  15 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_2  16 happyReduction_42
happyReduction_42 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (AbsGram.Neg happy_var_2
	)
happyReduction_42 _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_2  16 happyReduction_43
happyReduction_43 (HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (AbsGram.Not happy_var_2
	)
happyReduction_43 _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  16 happyReduction_44
happyReduction_44 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  17 happyReduction_45
happyReduction_45 (HappyAbsSyn15  happy_var_3)
	(HappyAbsSyn24  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EMul happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_1  17 happyReduction_46
happyReduction_46 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  18 happyReduction_47
happyReduction_47 (HappyAbsSyn15  happy_var_3)
	(HappyAbsSyn23  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EAdd happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_1  18 happyReduction_48
happyReduction_48 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  19 happyReduction_49
happyReduction_49 (HappyAbsSyn15  happy_var_3)
	(HappyAbsSyn25  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.ERel happy_var_1 happy_var_2 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  19 happyReduction_50
happyReduction_50 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  20 happyReduction_51
happyReduction_51 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EAnd happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  20 happyReduction_52
happyReduction_52 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  21 happyReduction_53
happyReduction_53 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (AbsGram.EOr happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_1  21 happyReduction_54
happyReduction_54 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_54 _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_0  22 happyReduction_55
happyReduction_55  =  HappyAbsSyn22
		 ([]
	)

happyReduce_56 = happySpecReduce_1  22 happyReduction_56
happyReduction_56 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn22
		 ((:[]) happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_3  22 happyReduction_57
happyReduction_57 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn22
		 ((:) happy_var_1 happy_var_3
	)
happyReduction_57 _ _ _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  23 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn23
		 (AbsGram.Plus
	)

happyReduce_59 = happySpecReduce_1  23 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn23
		 (AbsGram.Minus
	)

happyReduce_60 = happySpecReduce_1  24 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn24
		 (AbsGram.Times
	)

happyReduce_61 = happySpecReduce_1  24 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn24
		 (AbsGram.Div
	)

happyReduce_62 = happySpecReduce_1  24 happyReduction_62
happyReduction_62 _
	 =  HappyAbsSyn24
		 (AbsGram.Mod
	)

happyReduce_63 = happySpecReduce_1  25 happyReduction_63
happyReduction_63 _
	 =  HappyAbsSyn25
		 (AbsGram.LTH
	)

happyReduce_64 = happySpecReduce_1  25 happyReduction_64
happyReduction_64 _
	 =  HappyAbsSyn25
		 (AbsGram.LE
	)

happyReduce_65 = happySpecReduce_1  25 happyReduction_65
happyReduction_65 _
	 =  HappyAbsSyn25
		 (AbsGram.GTH
	)

happyReduce_66 = happySpecReduce_1  25 happyReduction_66
happyReduction_66 _
	 =  HappyAbsSyn25
		 (AbsGram.GE
	)

happyReduce_67 = happySpecReduce_1  25 happyReduction_67
happyReduction_67 _
	 =  HappyAbsSyn25
		 (AbsGram.EQU
	)

happyReduce_68 = happySpecReduce_1  25 happyReduction_68
happyReduction_68 _
	 =  HappyAbsSyn25
		 (AbsGram.NE
	)

happyNewToken action sts stk [] =
	action 65 65 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 26;
	PT _ (TS _ 2) -> cont 27;
	PT _ (TS _ 3) -> cont 28;
	PT _ (TS _ 4) -> cont 29;
	PT _ (TS _ 5) -> cont 30;
	PT _ (TS _ 6) -> cont 31;
	PT _ (TS _ 7) -> cont 32;
	PT _ (TS _ 8) -> cont 33;
	PT _ (TS _ 9) -> cont 34;
	PT _ (TS _ 10) -> cont 35;
	PT _ (TS _ 11) -> cont 36;
	PT _ (TS _ 12) -> cont 37;
	PT _ (TS _ 13) -> cont 38;
	PT _ (TS _ 14) -> cont 39;
	PT _ (TS _ 15) -> cont 40;
	PT _ (TS _ 16) -> cont 41;
	PT _ (TS _ 17) -> cont 42;
	PT _ (TS _ 18) -> cont 43;
	PT _ (TS _ 19) -> cont 44;
	PT _ (TS _ 20) -> cont 45;
	PT _ (TS _ 21) -> cont 46;
	PT _ (TS _ 22) -> cont 47;
	PT _ (TS _ 23) -> cont 48;
	PT _ (TS _ 24) -> cont 49;
	PT _ (TS _ 25) -> cont 50;
	PT _ (TS _ 26) -> cont 51;
	PT _ (TS _ 27) -> cont 52;
	PT _ (TS _ 28) -> cont 53;
	PT _ (TS _ 29) -> cont 54;
	PT _ (TS _ 30) -> cont 55;
	PT _ (TS _ 31) -> cont 56;
	PT _ (TS _ 32) -> cont 57;
	PT _ (TS _ 33) -> cont 58;
	PT _ (TS _ 34) -> cont 59;
	PT _ (TS _ 35) -> cont 60;
	PT _ (TS _ 36) -> cont 61;
	PT _ (TV happy_dollar_dollar) -> cont 62;
	PT _ (TI happy_dollar_dollar) -> cont 63;
	PT _ (TL happy_dollar_dollar) -> cont 64;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 65 tk tks = happyError' (tks, explist)
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
