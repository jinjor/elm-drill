module T2_Booleans exposing (..)

import A2_Booleans as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q2_Booleans as Q
import Test exposing (..)
import TestUtil exposing (testQA, testQA2)


suite : Test
suite =
    describe "Booleans"
        [ testQA "alwaysTrue" bool Q.alwaysTrue A.alwaysTrue
        , testQA2 "and" bool bool Q.and A.and
        , testQA2 "or" bool bool Q.or A.or
        , testQA "isPositive" int Q.isPositive A.isPositive
        , testQA "isNegative" int Q.isNegative A.isNegative
        , testQA "is42" int Q.is42 A.is42
        , testQA "isNot42" int Q.isNot42 A.isNot42
        , testQA "isEven" int Q.isEven A.isEven
        , testQA2 "areEven" int int Q.areEven A.areEven
        , testQA "isPositiveAndEven" int Q.isPositiveAndEven A.isPositiveAndEven
        ]
