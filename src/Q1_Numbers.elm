module Q1_Numbers exposing (..)

{-| 数値

  - Int は整数です
  - Float は浮動小数点数です

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Basics>

-}


{-| a に 1 を足して返します
-}
increment : Int -> Int
increment n =
    n + 1


{-| a から 1 を引いて返します
-}
decrement : Int -> Int
decrement n =
    Debug.crash "TODO"


{-| a と b を足し算して返します
-}
add : Int -> Int -> Int
add a b =
    Debug.crash "TODO"


{-| a と b を掛け算して返します
-}
multiply : Float -> Float -> Float
multiply a b =
    Debug.crash "TODO"


{-| a を b で割ります
-}
divide : Float -> Float -> Float
divide a b =
    Debug.crash "TODO"


{-| a を b で割り、余りを切り捨てます
-}
divideInt : Int -> Int -> Int
divideInt a b =
    Debug.crash "TODO"


{-| 2倍します。
number は Int と Float のどちらかであることを表します。
-}
double : number -> number
double n =
    Debug.crash "TODO"
