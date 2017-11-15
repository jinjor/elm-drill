module T3_Strings exposing (..)

import A3_Strings as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q3_Strings as Q
import Test exposing (..)
import TestUtil exposing (testQA, testQA2, testQA3)


suite : Test
suite =
    describe "Strings"
        [ testQA2 "concat" string string Q.concat A.concat
        , testQA2 "concatWithComma" string string Q.concatWithComma A.concatWithComma
        , testQA "length" string Q.length A.length
        , testQA "reverse" string Q.reverse A.reverse
        , testQA2 "contains" string string Q.contains A.contains
        , testQA "show" float Q.show A.show
        , testQA "hasMoreThan80Chars" string Q.hasMoreThan80Chars A.hasMoreThan80Chars
        , testQA2 "containsCaseInsensitive" string string Q.containsCaseInsensitive A.containsCaseInsensitive
        , testQA "fromChar" char Q.fromChar A.fromChar
        , testQA3 "concatWith" char string string Q.concatWith A.concatWith
        ]
