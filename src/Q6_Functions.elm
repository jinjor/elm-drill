module Q6_Functions exposing (..)

{-| 関数

  - 関数 a -> b -> c は２つの引数 `a`, `b` を与えると `c` を返しますが、
    １つの引数 `a` だけを与えると、残りの `b -> c` を返します。
  - ループ構文はありません。代わりに再帰を使います。

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Basics>
  - <https://evancz.gitbooks.io/functional-programming-in-elm/>

-}


{-| ２ヶ国語の挨拶です。
if ~ then ~ else ~ の使い方を確認してください。
英語は "Hello" が答えです。
-}
greet : Bool -> String
greet isJapanese =
    if isJapanese then
        "こんにちは"
    else
        Debug.crash "TODO"


{-| ２ヶ国語の挨拶で誰かに呼びかけています。
let ~ in の使い方と、 if ~ then ~ else ~ が値を返していることを確認してください。
-}
greetSomeone : Bool -> String -> String
greetSomeone isJapanese name =
    let
        greeting =
            if isJapanese then
                "こんにちは"
            else
                Debug.crash "TODO"
    in
    greeting ++ ", " ++ name


{-| 時刻を `05:08` のように整形します。
-}
formatTime : ( Int, Int ) -> String
formatTime ( hour, minute ) =
    let
        pad =
            String.padLeft 2 '0'
    in
    Debug.crash "TODO"


{-| `String.trim`, `String.toUpper`, `String.reverse` を連続して適用します。
-}
trimAndToUpperAndReverse : String -> String
trimAndToUpperAndReverse s =
    String.reverse (String.toUpper (String.trim s))


{-| `<|` を使うと括弧を除去できます
-}
trimAndToUpperAndReverseWithoutParens : String -> String
trimAndToUpperAndReverseWithoutParens s =
    Debug.crash "(function)" <| Debug.crash "(function)" <| Debug.crash "(function)" s


{-| `<<` を使うと関数を合成できます
-}
trimAndToUpperAndReverseComposed : String -> String
trimAndToUpperAndReverseComposed =
    Debug.crash "(function)" << Debug.crash "(function)" << Debug.crash "(function)"


{-| `|>` を使うと左から右（上から下）に読むことができます
-}
trimAndToUpperAndReverseLeftToRight : String -> String
trimAndToUpperAndReverseLeftToRight s =
    s
        |> Debug.crash "(function)"
        |> Debug.crash "(function)"
        |> Debug.crash "(function)"


{-| `>>` を使うと左から右に読めるように合成できます
-}
trimAndToUpperAndReverseLeftToRightComposed : String -> String
trimAndToUpperAndReverseLeftToRightComposed =
    Debug.crash "(function)"
        >> Debug.crash "(function)"
        >> Debug.crash "(function)"


{-| 階乗を計算します。(n >= 0)

    n! = n * (n - 1) * (n - 2) * ... 1

ヒント：再帰を使って実装します。

      factorial 3
      = 3 * factorial 2
      = 3 * (2 * factorial 1)
      = 3 * (2 * (1 * factorial 0))
      = 3 * (2 * (1 * 1))
      = 6

-}
factorial : Int -> Int
factorial n =
    if n == 0 then
        1
    else
        Debug.crash "TODO"


{-| フィボナッチ数を計算します

      F0 = 0,
      F1 = 1,
      F(n+2) = Fn + F(n+1)

-}
fibonacci : Int -> Int
fibonacci n =
    if n == 0 then
        0
    else if n == 1 then
        1
    else
        Debug.crash "TODO"


{-| 1 から n までの和を計算します
-}
series : Int -> Int
series n =
    Debug.crash "TODO"


{-| 1 から n までの和を計算します。
ただし、関数呼び出しのスタックを節約します。
（末尾呼び出しの最適化）
-}
series2 : Int -> Int
series2 n =
    series2Help 0 n


series2Help : Int -> Int -> Int
series2Help sum n =
    if n == 0 then
        sum
    else
        Debug.crash "TODO"
