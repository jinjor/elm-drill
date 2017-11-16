module A3_Strings exposing (..)

{-| 文字列

  - String は文字列です
  - Char は単一の文字です

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/String>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Char>

-}


{-| 挨拶です。文字列は `++` で結合します。
-}
helloWorld : String
helloWorld =
    "Hello" ++ ", " ++ "World" ++ "!"


{-| 文字列 a と b を結合します
-}
concat : String -> String -> String
concat a b =
    a ++ b


{-| 文字列 a と b を `,` で結合します

    concatWithComma "foo" "bar" --> "foo,bar"

-}
concatWithComma : String -> String -> String
concatWithComma a b =
    a ++ "," ++ b


{-| 文字列の長さを返します
-}
length : String -> Int
length s =
    String.length s


{-| 文字列を反転します
-}
reverse : String -> String
reverse s =
    String.reverse s


{-| 文字列 a が文字列 s に含まれるかどうかを返します
-}
contains : String -> String -> Bool
contains a s =
    String.contains a s


{-| 任意の値を文字列に変換します。
引数の型 `a` （小文字）は任意の型を表します。
-}
show : a -> String
show a =
    toString a


{-| 80 文字より長ければ True を返します
-}
hasMoreThan80Chars : String -> Bool
hasMoreThan80Chars s =
    String.length s > 80


{-| 文字列 a が文字列 s に含まれるかどうかを返します。
ただし、大文字・小文字の区別はしないものとします。
-}
containsCaseInsensitive : String -> String -> Bool
containsCaseInsensitive a s =
    String.contains (String.toLower a) (String.toLower s)


{-| 文字 c を文字列に変換します
-}
fromChar : Char -> String
fromChar c =
    String.fromChar c


{-| 文字列 a と b を指定された文字で結合します
-}
concatWith : Char -> String -> String -> String
concatWith c a b =
    a ++ String.fromChar c ++ b
