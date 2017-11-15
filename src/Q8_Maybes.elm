module Q8_Maybes exposing (..)

{-| Maybe

  - 存在するかどうかが分からない値です

参照:

  - <https://guide.elm-lang.org/error_handling/maybe.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Maybe>

-}


{-| リストの最初の値があった場合はその値を文字列にし、なかった場合はその旨の文言を返します。
Maybe は Just a または Nothing の形にパターンマッチできます。
-}
showFirstValue : List a -> String
showFirstValue list =
    case List.head list of
        Just a ->
            toString a

        Nothing ->
            "not found"


{-| リストの最初の値があった場合はその値を返し、なかった場合はデフォルト値として `0` を返します。
-}
getFirstNumber : List Int -> Int
getFirstNumber list =
    Debug.crash "TODO"


{-| 要素の平均値を求めます。ただしリストが空の場合は Nothing を返します。
-}
average : List Float -> Maybe Float
average list =
    Debug.crash "TODO"


type alias Person =
    { name : String
    , age : Maybe Int
    , image : Maybe String
    }


{-| Person 型の値を作ります。ただし `age` と `image` は初期値に何もセットされていません。
-}
createPerson : String -> Person
createPerson name =
    Debug.crash "TODO"


{-| 入力されている年齢を全て収集します
-}
getAges : List Person -> List Int
getAges people =
    Debug.crash "TODO"
