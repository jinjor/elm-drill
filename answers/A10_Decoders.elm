module A10_Decoders exposing (..)

{-| JSON デコーダー

  - HTTP レスポンスの JSON を Elm の値に変換します
  - DOM Event オブジェクトを Elm の値に変換します

参照:

  - <https://guide.elm-lang.org/interop/json.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Json-Decode>

-}

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
    D.float


{-| `"hello"` という JSON 値を String に変換するデコーダーです
-}
stringDecoder : Decoder String
stringDecoder =
    D.string


{-| `[ "foo", "bar" ]` という JSON 値を List String に変換するデコーダーです
-}
namesDecoder : Decoder (List String)
namesDecoder =
    D.list D.string


{-| `{ flag: true }` という JSON オブジェクトの `flag` 値を Bool で取得するデコーダーです
-}
flagDecoder : Decoder Bool
flagDecoder =
    D.field "flag" D.bool


type alias Point =
    { x : Float, y : Float }


{-| `{ x: 1.0, y: 2.0 }` という JSON オブジェクトを Point 型に変換するデコーダーです
-}
pointDecoder : Decoder Point
pointDecoder =
    D.map2 Point
        (D.field "x" D.float)
        (D.field "y" D.float)


{-| `[{ x: 1.0, y: 2.0 }, { x: 3.0, y: 4.0 }]` という JSON オブジェクトを
List Point 型に変換するデコーダーです
-}
pointListDecoder : Decoder (List Point)
pointListDecoder =
    D.list pointDecoder


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
    D.map3 Message
        (D.field "createdAt" D.float)
        (D.field "createdBy" D.string)
        (D.field "content" contentDecoder)


{-| `{ createdAt: 1510640519671, createdBy: "jinjor", content: ? }` という
JSON オブジェクトを Message 型に変換するデコーダーです。
？の型はまだわからないのでデコードせずに保持します。
-}
customMessageDecoder : Decoder (Message Json.Encode.Value)
customMessageDecoder =
    messageDecoder D.value
