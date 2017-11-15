module A2_Booleans exposing (..)

{-| Bool

  - Bool は真理値です。
  - Bool の値は True か False のどちらかです

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Basics>

-}


{-| 必ず True を返します
引数の型 `a` は任意の型を表します
-}
alwaysTrue : a -> Bool
alwaysTrue _ =
    True


{-| 演算子を使って両方とも True の時 True を返します
-}
and : Bool -> Bool -> Bool
and a b =
    a && b


{-| 演算子を使ってどちらかが True の時 True を返します
-}
or : Bool -> Bool -> Bool
or a b =
    a || b


{-| 0 より大きければ True を返します
-}
isPositive : Int -> Bool
isPositive n =
    n > 0


{-| 0 より小さければ True を返します
-}
isNegative : Int -> Bool
isNegative n =
    n < 0


{-| 引数がちょうど 42 なら True を返します
-}
is42 : Int -> Bool
is42 n =
    n == 42


{-| 引数が 42 でない時 True を返します
-}
isNot42 : Int -> Bool
isNot42 n =
    n /= 42


{-| 偶数ならば True を返します
-}
isEven : Int -> Bool
isEven n =
    n % 2 == 0


{-| 両方とも偶数ならば True を返します
-}
areEven : Int -> Int -> Bool
areEven a b =
    a % 2 == 0 && b % 2 == 0


{-| 0 より大きい偶数ならば True を返します
-}
isPositiveAndEven : Int -> Bool
isPositiveAndEven n =
    n > 0 && n % 2 == 0
