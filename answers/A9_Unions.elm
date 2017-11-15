module A9_Unions exposing (..)

{-| ユニオン（union type）

  - 値を列挙して新しい型を作る
  - 他の言語の列挙体のようなもの
  - type Bool = True | False
  - type Maybe a = Just a | Nothing

参照:

  - <https://guide.elm-lang.org/types/union_types.html>

-}

import Q9_Unions exposing (FetchState(..), Language(..), User(..))


{-| ３ヶ国語による挨拶です。
網羅性をチェックするため、どれか一つを消すとコンパイルエラーになります。
フランス語は "Bonjour" が答えです。
-}
greet : Language -> String
greet lang =
    case lang of
        Ja ->
            "こんにちは"

        En ->
            "Hello"

        Fr ->
            "Bonjour"


{-| 全ての言語を挨拶と組にしたリストを作ります
-}
listGreetings : (Language -> String) -> List ( Language, String )
listGreetings toGreeting =
    [ Ja, En, Fr ]
        |> List.map (\lang -> ( lang, greet lang ))


{-| 訪問中のユーザーに表示するメッセージを返します
-}
message : User -> String
message user =
    case user of
        LoggedIn name ->
            "Hello, " ++ name ++ "!"

        Guest ->
            "Please login."


{-| 名前を受け取ってログインユーザーを返します
-}
makeLoginUser : String -> User
makeLoginUser name =
    LoggedIn name


{-| 名前のリストを受け取ってログインユーザーのリストを返します
-}
makeLoginUsers : List String -> List User
makeLoginUsers names =
    List.map LoggedIn names


{-| ゲストかどうかを判定します
-}
isGuest : User -> Bool
isGuest user =
    user == Guest


type alias Url =
    String


type alias Error =
    String


type alias Article =
    { title : String }


{-| 読み込み中かどうかを判定します。
-}
isLoading : FetchState a -> Bool
isLoading state =
    case state of
        Loading _ ->
            True

        _ ->
            False


{-| サーバーから取得した記事の一覧です。
取得に成功した場合、少なくとも全てのタイトルが表示されている必要があります。
-}
viewArticles : FetchState (List Article) -> String
viewArticles state =
    case state of
        NoRequest ->
            ""

        Loading _ ->
            "Now loading..."

        Success _ articles ->
            articles
                |> List.map .title
                |> String.join "\n"

        Failure url error ->
            "Failed to fetch from " ++ url ++ ": " ++ error
