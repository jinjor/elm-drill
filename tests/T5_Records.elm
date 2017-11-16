module T5_Records exposing (..)

import A5_Records as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q5_Records as Q exposing (Person)
import Test exposing (..)
import TestUtil exposing (testQA, testQA2, testQA3)


suite : Test
suite =
    describe "Records"
        [ testQA "getName" person A.getName A.getName
        , testQA "getName2" person A.getName2 A.getName2
        , testQA "getAge" person A.getAge A.getAge
        , testQA2 "makePerson" string int A.makePerson A.makePerson
        , testQA2 "makePerson2" string int A.makePerson2 A.makePerson2
        , testQA "incrementAge" person A.incrementAge A.incrementAge
        , testQA "isValid" person A.isValid A.isValid
        , testQA "getRole" roled A.getRole A.getRole
        ]


person : Fuzzer Person
person =
    Fuzz.map2 Person string int


roled : Fuzzer { role : String }
roled =
    Fuzz.map (\s -> { role = s }) string
