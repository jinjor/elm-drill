module T1_Numbers exposing (..)

import A1_Numbers as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q1_Numbers as Q
import Test exposing (..)
import TestUtil exposing (testQA, testQA2)


suite : Test
suite =
    describe "Numbers"
        [ testQA "increment" int Q.increment A.increment
        , testQA "decrement" int Q.decrement A.decrement
        , testQA2 "multiply" float float Q.multiply A.multiply
        , testQA2 "divide" float (floatRange 1 1000000) Q.divide A.divide
        , testQA2 "divideInt" int int Q.divideInt A.divideInt
        , testQA "double" float Q.double A.double
        ]
