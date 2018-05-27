module T7_Lists exposing (..)

import A7_Lists as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q7_Lists as Q
import Test exposing (..)
import TestUtil exposing (t2, testQA, testQA2)


suite : Test
suite =
    describe "Lists"
        [ testQA "length" (list string) Q.length A.length
        , testQA2 "range" (intRange -1000 1000) (intRange -1000 1000) Q.range A.range
        , testQA "toStringList" (list int) Q.toStringList A.toStringList
        , testQA "toDoubledList" (list int) Q.toDoubledList A.toDoubledList
        , testQA "toEvenList" (list int) Q.toEvenList A.toEvenList
        , testQA "showNumbers" (list int) Q.showNumbers A.showNumbers
        , testQA "showNumbers2" (list int) Q.showNumbers2 A.showNumbers2
        , testQA "myLength" (list float) Q.myLength A.myLength
        , testQA "mySum" (list int) Q.mySum A.mySum
        , testQA "mySum2" (list int) Q.mySum2 A.mySum2
        , testQA "beginsWithHello" (list string) Q.beginsWithHello A.beginsWithHello
        , testQA "beginsWithHelloWorld" (list string) Q.beginsWithHelloWorld A.beginsWithHelloWorld
        , testQA "beginsWithHelloWorld2" (list (t2 string string)) Q.beginsWithHelloWorld2 A.beginsWithHelloWorld2
        , testQA2 "member" string (list string) Q.member A.member
        , testQA2 "collect" (map (\i n -> remainderBy i n == 0) (intRange 1 5)) (list int) Q.collect A.collect
        , testQA "sortByX" (list (map2 Position int int)) Q.sortByX A.sortByX
        , testQA2 "zip" (list float) (list string) Q.zip A.zip
        , testQA "zipWithIndex" (list int) Q.zipWithIndex A.zipWithIndex
        , testQA2 "removeAt" int (list string) Q.removeAt A.removeAt
        ]


type alias Position =
    { x : Int, y : Int }
