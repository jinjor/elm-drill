module T4_Tuples exposing (..)

import A4_Tuples as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q4_Tuples as Q
import Test exposing (..)
import TestUtil exposing (t2, t3, testQA, testQA2, testQA3)


suite : Test
suite =
    describe "Tuples"
        [ testQA2 "makePair" int string Q.makePair A.makePair
        , testQA2 "makePair2" int string Q.makePair2 A.makePair2
        , testQA3 "makeTriplet" int string bool Q.makeTriplet A.makeTriplet
        , testQA "getFirstValue" (t2 float float) Q.getFirstValue A.getFirstValue
        , testQA "getFirstValue2" (t2 float float) Q.getFirstValue2 A.getFirstValue2
        , testQA2 "addVectors" (t2 float float) (t2 float float) Q.addVectors A.addVectors
        , testQA "swap" (t2 float string) Q.swap A.swap
        , testQA "getLast" (t3 int float string) Q.getLast A.getLast
        ]
