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
        [ testQA "getName" person Q.getName A.getName
        , testQA "getName2" person Q.getName2 A.getName2
        , testQA "getAge" person Q.getAge A.getAge
        , testQA2 "makePerson" string int Q.makePerson A.makePerson
        , testQA2 "makePerson2" string int Q.makePerson2 A.makePerson2
        , testQA "incrementAge" person Q.incrementAge A.incrementAge
        , testQA "isValid" person Q.isValid A.isValid
        , testQA "getRole" roled Q.getRole A.getRole
        ]


person : Fuzzer Person
person =
    Fuzz.map2 Person string int


roled : Fuzzer { role : String }
roled =
    Fuzz.map (\s -> { role = s }) string
