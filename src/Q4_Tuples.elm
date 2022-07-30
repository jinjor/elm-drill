module Q4_Tuples exposing (..)

{-| タプル

  - タプルとは「組」のことです
  - 2つ・3つの値を同時に返したい時に使います

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <https://package.elm-lang.org/packages/elm/core/latest/Tuple>

-}


{-| タプルを作ります。1つ目の型と2つ目の型は違っても構いません
-}
makePair : Int -> String -> ( Int, String )
makePair a b =
    ( a, b )


{-| 別の書き方です。時と場合によりこちらが便利です。
-}
makePair2 : Int -> String -> ( Int, String )
makePair2 a b =
    Tuple.pair a b


{-| 3つの組を作ります
-}
makeTriplet : Int -> String -> Bool -> ( Int, String, Bool )
makeTriplet a b c =
    Debug.todo "TODO"


{-| 2つの値のうち、最初の値を取り出します
-}
getFirstValue : ( Float, Float ) -> Float
getFirstValue pair =
    Debug.todo "TODO"


{-| 2つの値のうち、最初の値を取り出します。
引数でタプルを受け取る場合は、その場で展開することができます
-}
getFirstValue2 : ( Float, Float ) -> Float
getFirstValue2 ( a, b ) =
    Debug.todo "TODO" ()


{-| 2つの値からなるベクトル同士を足し合わせます

    addVectors (1, 2) (3, 4) --> (4, 6)

-}
addVectors : ( Float, Float ) -> ( Float, Float ) -> ( Float, Float )
addVectors ( x1, y1 ) ( x2, y2 ) =
    Debug.todo "TODO" ()


{-| 2つの値を入れ替えます。
引数 `a` と `b` はそれぞれ任意の型を表します。
ここで、２回ずつ現れる `a` 同士、`b` 同士は同じ型であることを表しています。
-}
swap : ( a, b ) -> ( b, a )
swap ( a, b ) =
    Debug.todo "TODO" ()


{-| 3つの値のうち、最後のものを取得します。
引数 `first` `second` `third` はそれぞれ任意の型を表します。
やはり、引数の型 `third` と戻り値の型 `third` は同じ型を表します。
-}
getLast : ( first, second, third ) -> third
getLast ( _, _, thisIsTheLastOne ) =
    Debug.todo "TODO" ()
