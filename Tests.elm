module Tests exposing (..)

import Expect exposing (Expectation)
import T10_Decoders
import T1_Numbers
import T2_Booleans
import T3_Strings
import T4_Tuples
import T5_Records
import T6_Functions
import T7_Lists
import T8_Maybes
import T9_Unions
import Test exposing (..)


{-| 次のテストに進むには、 `only` を付け替えてください。
（または、実行したくないテストに `skip` をつけます。）
-}
suite : Test
suite =
    describe "All"
        [ only T1_Numbers.suite
        , T2_Booleans.suite
        , T3_Strings.suite
        , T4_Tuples.suite
        , T5_Records.suite
        , T6_Functions.suite
        , T7_Lists.suite
        , T8_Maybes.suite
        , T9_Unions.suite
        , T10_Decoders.suite
        ]
