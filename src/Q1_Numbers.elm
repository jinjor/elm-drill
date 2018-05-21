module Q1_Numbers exposing (..)

{-| 数値

  - Int は整数です
  - Float は浮動小数点数です

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Basics>

-}


{-| n に 1 を足して返します
-}
increment : Int -> Int
increment n =
    n + 1


{-| n から 1 を引いて返します
-}
decrement : Int -> Int
decrement n =
    Debug.todo "TODO"


{-| a と b を足し算して返します
-}
add : Int -> Int -> Int
add a b =
    Debug.todo "TODO"


{-| a と b を掛け算して返します
-}
multiply : Float -> Float -> Float
multiply a b =
    Debug.todo "TODO"


{-| a を b で割ります
-}
divide : Float -> Float -> Float
divide a b =
    Debug.todo "TODO"


{-| a を b で割り、余りを切り捨てます
-}
divideInt : Int -> Int -> Int
divideInt a b =
    Debug.todo "TODO"


{-| 2倍します。
number は Int と Float のどちらかであることを表します。
-}
double : number -> number
double n =
    Debug.todo "TODO"
