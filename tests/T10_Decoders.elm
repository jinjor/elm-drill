module T10_Decoders exposing (..)

import A10_Decoders as A
import Expect exposing (Expectation)
import Fuzz exposing (..)
import Json.Decode as D exposing (Decoder)
import Q10_Decoders as Q
import Test exposing (..)
import TestUtil exposing (t2, testQA, testQA2)


suite : Test
suite =
    describe "Decoders"
        [ testDecoderQA "intDecoder"
            [ "0"
            , "1"
            , "-1"
            , "1.5"
            , "{}"
            , "true"
            ]
            Q.intDecoder
            A.intDecoder
        , testDecoderQA "floatDecoder"
            [ "0"
            , "1"
            , "1.5"
            , "-2.0"
            , "-40.1"
            , "[]"
            , ""
            ]
            Q.floatDecoder
            A.floatDecoder
        , testDecoderQA "stringDecoder"
            [ "\"\""
            , "\"foo\""
            , "[]"
            , "{}"
            ]
            Q.stringDecoder
            A.stringDecoder
        , testDecoderQA "namesDecoder"
            [ "[\"foo\",\"bar\"]"
            , "[]"
            , "\"foo\""
            , "[\"a\", 1]"
            ]
            Q.namesDecoder
            A.namesDecoder
        , testDecoderQA "flagDecoder"
            [ "{}"
            , "{ \"flag\": 1 }"
            , "{ \"flag\": null }"
            , "{ \"flag\": true }"
            ]
            Q.flagDecoder
            A.flagDecoder
        , testDecoderQA "pointDecoder"
            [ "[]"
            , "{\"x\":1,\"y\":0}"
            , "{\"x\":1,\"y\":null}"
            ]
            Q.pointDecoder
            A.pointDecoder
        , testDecoderQA "pointListDecoder"
            [ "[]"
            , "[{\"x\":1,\"y\":0}]"
            , "[{\"x\":1,\"y\":null}]"
            ]
            Q.pointListDecoder
            A.pointListDecoder
        , testDecoderQA "messageDecoder"
            [ "{\"createdAt\":0,\"createdBy\":\"me\",\"content\":true}"
            , "{\"createdAt\":1,\"createdBy\":\"\",\"content\":1}"
            , "{\"createdAt\":2,\"createdBy\":\"me\",\"content\":[]}"
            , "{\"createdAt\":3,\"createdBy\":0,\"content\":1}"
            ]
            (Q.messageDecoder (D.oneOf [ D.map (always 100) D.bool, D.int ]))
            (A.messageDecoder (D.oneOf [ D.map (always 100) D.bool, D.int ]))
        , testDecoderQA "customMessageDecoder"
            [ "{\"createdAt\":0,\"createdBy\":\"me\",\"content\":[ null ]}"
            , "{\"createdAt\":1,\"createdBy\":\"\",\"content\":{ \"flag\": false }}"
            , "{\"createdAt\":2,\"createdBy\":0,\"content\":{ \"flag\": false }}"
            ]
            Q.customMessageDecoder
            A.customMessageDecoder
        ]


testDecoderQA : String -> List String -> Decoder a -> Decoder a -> Test
testDecoderQA name jsons q a =
    fuzz
        (oneOf (List.map constant jsons))
        name
        (\s -> Expect.equal (D.decodeString a s) (D.decodeString q s))
