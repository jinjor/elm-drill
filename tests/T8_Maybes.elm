module T8_Maybes exposing (..)

import A8_Maybes as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q8_Maybes as Q exposing (Person)
import Test exposing (..)
import TestUtil exposing (t2, testQA, testQA2)


suite : Test
suite =
    describe "Maybes"
        [ testQA "showFirstValue" (list string) Q.showFirstValue A.showFirstValue
        , testQA "getFirstNumber" (list int) Q.getFirstNumber A.getFirstNumber
        , testQA "average" (list float) Q.average A.average
        , testQA "createPerson" string Q.createPerson A.createPerson
        , testQA "getAges" (list person) Q.getAges A.getAges
        ]


person : Fuzzer Person
person =
    Fuzz.map3 Person string (maybe int) (maybe string)
