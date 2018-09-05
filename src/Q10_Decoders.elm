module Q10_Decoders exposing (..)

{-| JSON デコーダー

  - HTTP レスポンスの JSON を Elm の値に変換します
  - DOM Event オブジェクトを Elm の値に変換します

参照:

  - <https://guide.elm-lang.org/effects/json.html>
  - <https://package.elm-lang.org/packages/elm/json/latest/Json-Decode>

-}

-- モジュール名が長いので、ここでは D という別名をつけておきます
-- また、 Decoder 型をモジュール名なしで使えるようにします

import Json.Decode as D exposing (Decoder)
import Json.Encode


{-| `1` という JSON 値を Int に変換するデコーダーです

これを使うには、次のようにします。

    case D.decodeString intDecoder "1" of
      Ok a ->
        ...

      Err e ->
        ...

入力が "1" のように整数値なら成功（`Ok`）、"{ year : 2017 }" のように
予期しないデータが来た場合は失敗します。

実際には、上の分岐をユーザーが直接書く機会はほとんどなく、習得すべきなのはデコーダーの書き方です。

-}
intDecoder : Decoder Int
intDecoder =
    D.int


{-| `1.0` という JSON 値を Float に変換するデコーダーです
-}
floatDecoder : Decoder Float
floatDecoder =
    D.fail "TODO"


{-| `"hello"` という JSON 値を String に変換するデコーダーです
-}
stringDecoder : Decoder String
stringDecoder =
    D.fail "TODO"


{-| `[ "foo", "bar" ]` という JSON 値を List String に変換するデコーダーです
-}
namesDecoder : Decoder (List String)
namesDecoder =
    D.fail "TODO"


{-| `{ flag: true }` という JSON オブジェクトの `flag` 値を Bool で取得するデコーダーです
-}
flagDecoder : Decoder Bool
flagDecoder =
    D.fail "TODO"


type alias Point =
    { x : Float, y : Float }


{-| `{ x: 1.0, y: 2.0 }` という JSON オブジェクトを Point 型に変換するデコーダーです
-}
pointDecoder : Decoder Point
pointDecoder =
    D.fail "TODO"


{-| `[{ x: 1.0, y: 2.0 }, { x: 3.0, y: 4.0 }]` という JSON オブジェクトを
List Point 型に変換するデコーダーです
-}
pointListDecoder : Decoder (List Point)
pointListDecoder =
    D.fail "TODO"


type alias Message a =
    { createdAt : Float
    , createdBy : String
    , content : a
    }


{-| `{ createdAt: 1510640519671, createdBy: "jinjor", content: ? }` という
JSON オブジェクトを Message 型に変換するデコーダーです。
？の型は引数のデコーダーによって決まります。
-}
messageDecoder : Decoder a -> Decoder (Message a)
messageDecoder contentDecoder =
    D.fail "TODO"


{-| `{ createdAt: 1510640519671, createdBy: "jinjor", content: ? }` という
JSON オブジェクトを Message 型に変換するデコーダーです。
？の型はまだわからないのでデコードせずに保持します。
-}
customMessageDecoder : Decoder (Message Json.Encode.Value)
customMessageDecoder =
    D.fail "TODO"
