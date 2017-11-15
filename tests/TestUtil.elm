module TestUtil exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (..)
import Test exposing (..)


testQA : String -> Fuzzer a -> (a -> r) -> (a -> r) -> Test
testQA name f q a =
    fuzz f name (\d1 -> Expect.equal (a d1) (q d1))


testQA2 : String -> Fuzzer a -> Fuzzer b -> (a -> b -> r) -> (a -> b -> r) -> Test
testQA2 name f1 f2 q a =
    fuzz2 f1 f2 name (\d1 d2 -> Expect.equal (a d1 d2) (q d1 d2))


testQA3 : String -> Fuzzer a -> Fuzzer b -> Fuzzer c -> (a -> b -> c -> r) -> (a -> b -> c -> r) -> Test
testQA3 name f1 f2 f3 q a =
    fuzz3 f1 f2 f3 name (\d1 d2 d3 -> Expect.equal (a d1 d2 d3) (q d1 d2 d3))


t2 : Fuzzer a -> Fuzzer b -> Fuzzer ( a, b )
t2 f1 f2 =
    tuple ( f1, f2 )


t3 : Fuzzer a -> Fuzzer b -> Fuzzer c -> Fuzzer ( a, b, c )
t3 f1 f2 f3 =
    tuple3 ( f1, f2, f3 )
