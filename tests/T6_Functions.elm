module T6_Functions exposing (..)

import A6_Functions as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q6_Functions as Q
import Test exposing (..)
import TestUtil exposing (t2, testQA, testQA2)


suite : Test
suite =
    describe "Functions"
        [ testQA "greet" bool Q.greet A.greet
        , testQA2 "greetSomeone" bool string Q.greetSomeone A.greetSomeone
        , testQA "formatTime" (t2 int int) Q.formatTime A.formatTime
        , testQA "trimAndToUpperAndReverse" string Q.trimAndToUpperAndReverse A.trimAndToUpperAndReverse
        , testQA "trimAndToUpperAndReverseWithoutParens" string Q.trimAndToUpperAndReverseWithoutParens A.trimAndToUpperAndReverseWithoutParens
        , testQA "trimAndToUpperAndReverseComposed" string Q.trimAndToUpperAndReverseComposed A.trimAndToUpperAndReverseComposed
        , testQA "trimAndToUpperAndReverseLeftToRight" string Q.trimAndToUpperAndReverseLeftToRight A.trimAndToUpperAndReverseLeftToRight
        , testQA "trimAndToUpperAndReverseLeftToRightComposed" string Q.trimAndToUpperAndReverseLeftToRightComposed A.trimAndToUpperAndReverseLeftToRightComposed
        , testQA "factorial" (intRange 0 1000) Q.factorial A.factorial
        , testQA "fibonacci" (intRange 0 6) Q.fibonacci A.fibonacci
        , testQA "series" (intRange 0 1000) Q.series A.series
        , testQA "series2" (intRange 0 1000000) Q.series2 A.series2
        ]
