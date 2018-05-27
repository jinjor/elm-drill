module T9_Unions exposing (..)

import A9_Unions as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Q9_Unions as Q exposing (Article, FetchState(..), Language(..), User(..))
import Test exposing (..)
import TestUtil exposing (t2, testQA, testQA2)


suite : Test
suite =
    describe "Unions"
        [ testQA "greet" lang Q.greet A.greet
        , testQA "listGreetings" (map (\s lang_ -> Debug.toString lang_ ++ s) string) Q.listGreetings A.listGreetings
        , testQA "message" user Q.message A.message
        , testQA "makeLoginUser" string Q.makeLoginUser A.makeLoginUser
        , testQA "makeLoginUsers" (list string) Q.makeLoginUsers A.makeLoginUsers
        , testQA "isGuest" user Q.isGuest A.isGuest
        , testQA "isLoading" fetchState Q.isLoading A.isLoading
        ]


lang : Fuzzer Language
lang =
    oneOf
        [ constant Ja
        , constant En
        , constant Fr
        ]


user : Fuzzer User
user =
    oneOf
        [ map LoggedIn string
        , constant Guest
        ]


fetchState : Fuzzer (FetchState (List Article))
fetchState =
    oneOf
        [ constant NoRequest
        , map Loading string
        , map2 Success string (list article)
        , map2 Failure string string
        ]


article : Fuzzer Article
article =
    map Article string
