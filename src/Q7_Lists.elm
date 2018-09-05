module Q7_Lists exposing (beginsWithHello, beginsWithHelloWorld, beginsWithHelloWorld2, collect, emptyList, length, member, myLength, mySum, mySum2, mySum2Help, numbers, numbers2, range, removeAt, showNumbers, showNumbers2, sortByX, toDoubledList, toEvenList, toStringList, zip, zipWithIndex)

{-| リスト

  - 連結リストです

参照:

  - [https://guide.elm-lang.org/core\_language.html](https://guide.elm-lang.org/core_language.html)
  - <https://package.elm-lang.org/packages/elm/core/latest/List>

-}


{-| 空のリストです。`List a` は `a` 型のリストを表します。
-}
emptyList : List a
emptyList =
    []


{-| Int のリストです。リストに入れられるのは全て同じ型の値です。
-}
numbers : List Int
numbers =
    [ 1, 2, 3 ]


{-| (::) コンス演算子を使うと次のように書けます。
右結合なので、意味的には `1 :: (2 :: (3 :: []))` と書いていることになります。
最も左にある値 `1` には素早くアクセスできますが、終端（右）に近いほどアクセスが遅くなります。
-}
numbers2 : List Int
numbers2 =
    1 :: 2 :: 3 :: []


{-| 長さを返します
-}
length : List a -> Int
length list =
    Debug.todo "TODO"


{-| from から to までの数字が入ったリストを返します
-}
range : Int -> Int -> List Int
range from to =
    Debug.todo "TODO"


{-| それぞれの要素を Debug.toString したリストを返します。

    // JavaScript
    [1,2,3].map(a => a.toString())

-}
toStringList : List Int -> List String
toStringList list =
    List.map (Debug.todo "TODO") list


{-| それぞれの要素を２倍したリストを返します。
ここではラムダ式を使って、匿名の関数を渡します。

    // JavaScript
    [1,2,3].map(a => a * 2)

-}
toDoubledList : List Int -> List Int
toDoubledList list =
    List.map (\a -> Debug.todo "TODO") list


{-| 偶数だけを残したリストを返します
-}
toEvenList : List Int -> List Int
toEvenList list =
    Debug.todo "TODO"


{-| 数値をカンマ区切りの文字列にします。

    [ 1, 2, 3 ] ==> "1,2,3"

-}
showNumbers : List Int -> String
showNumbers list =
    list
        |> Debug.todo "List.xxx"
        |> Debug.todo "String.xxxx"


{-| 同じく、数値をカンマ区切りの文字列にします。
上の方がエレガントですが、練習のために `foldl` を使います
-}
showNumbers2 : List Int -> String
showNumbers2 list =
    List.foldl (\n s -> Debug.todo "TODO") "" list


{-| リストの長さを再帰的に調べます。
`case of` はパターンマッチのための構文です。
-}
myLength : List a -> Int
myLength list =
    case list of
        -- 空リストの場合
        [] ->
            0

        -- 最初の要素 x とそれ以降のリスト xs（命名は慣習です）
        x :: xs ->
            1 + myLength xs


{-| 要素の総和を再帰的に求めます。
-}
mySum : List Int -> Int
mySum list =
    case list of
        [] ->
            0

        x :: xs ->
            Debug.todo "TODO"


{-| 要素の総和を再帰的に求めます。
ただし、関数呼び出しによってスタックを消費しないようにします。
（末尾呼び出しの最適化）
-}
mySum2 : List Int -> Int
mySum2 list =
    mySum2Help 0 list


mySum2Help : Int -> List Int -> Int
mySum2Help sum list =
    case list of
        [] ->
            sum

        x :: xs ->
            Debug.todo "TODO"


{-| 最初の要素が "Hello" であれば True を返します。
-}
beginsWithHello : List String -> Bool
beginsWithHello list =
    case list of
        "TODO" :: xs ->
            True

        -- 残り全てのパターンにマッチします
        _ ->
            False


{-| 最初の要素が "Hello"、次の要素が "World" であれば True を返します。
-}
beginsWithHelloWorld : List String -> Bool
beginsWithHelloWorld list =
    case list of
        "TODO" :: "TODO" :: xs ->
            True

        _ ->
            False


{-| 最初の要素が ("Hello", "World") であれば True を返します。
-}
beginsWithHelloWorld2 : List ( String, String ) -> Bool
beginsWithHelloWorld2 list =
    case list of
        ( "TODO", "TODO" ) :: xs ->
            True

        _ ->
            False


{-| 与えられた値と同じ値を含んでいれば True を返します
-}
member : a -> List a -> Bool
member a list =
    Debug.todo "TODO"


{-| 与えられた関数を満たす要素をリストで返します
-}
collect : (a -> Bool) -> List a -> List a
collect satisfy list =
    Debug.todo "TODO"


{-| x の小さい順に並び替えます
-}
sortByX : List { x : Int, y : Int } -> List { x : Int, y : Int }
sortByX list =
    Debug.todo "TODO"


{-| 2つのリストの要素を対にしたリストを作ります
zip [1,2,3]["a", "b"] ==> [(1,"a"), (2,"b")]
-}
zip : List a -> List b -> List ( a, b )
zip list1 list2 =
    Debug.todo "TODO"


{-| インデックスと要素を対にしたリストを作ります
zipWithIndex ["foo", "bar"] ==> [(0,"foo"), (1,"bar")]
-}
zipWithIndex : List a -> List ( a, b )
zipWithIndex list =
    Debug.todo "TODO"


{-| 指定したインデックスの要素を削除します
-}
removeAt : Int -> List a -> List a
removeAt index =
    Debug.todo "TODO"
