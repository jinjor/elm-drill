module A7_Lists exposing (..)

{-| リスト

  - 連結リストです

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/List>

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
    List.length list


{-| from から to までの数字が入ったリストを返します
-}
range : Int -> Int -> List Int
range from to =
    List.range from to


{-| それぞれの要素を toString したリストを返します。

    // JavaScript
    [1,2,3].map(a => a.toString())

-}
toStringList : List Int -> List String
toStringList list =
    List.map toString list


{-| それぞれの要素を２倍したリストを返します。
ここではラムダ式を使って、匿名の関数を渡します。

    // JavaScript
    [1,2,3].map(a => a * 2)

-}
toDoubledList : List Int -> List Int
toDoubledList list =
    List.map (\a -> a * 2) list


{-| 偶数だけを残したリストを返します
-}
toEvenList : List Int -> List Int
toEvenList list =
    List.filter (\a -> a % 2 == 0) list


{-| 数値をカンマ区切りの文字列にします。

    [1,2,3] ==> "1,2,3"

-}
showNumbers : List Int -> String
showNumbers list =
    list
        |> List.map toString
        |> String.join ","


{-| 同じく、数値をカンマ区切りの文字列にします。
上の方がエレガントですが、練習のために `foldl` を使います
-}
showNumbers2 : List Int -> String
showNumbers2 list =
    List.foldl
        (\n s ->
            if s == "" then
                toString n
            else
                s ++ "," ++ toString n
        )
        ""
        list


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
            x + mySum xs


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
            mySum2Help (sum + x) xs


{-| 最初の要素が "Hello" であれば True を返します。
-}
beginsWithHello : List String -> Bool
beginsWithHello list =
    case list of
        "Hello" :: xs ->
            True

        -- 残り全てのパターンにマッチします
        _ ->
            False


{-| 最初の要素が "Hello"、次の要素が "World" であれば True を返します。
-}
beginsWithHelloWorld : List String -> Bool
beginsWithHelloWorld list =
    case list of
        "Hello" :: "World" :: xs ->
            True

        _ ->
            False


{-| 最初の要素が ("Hello", "World") であれば True を返します。
-}
beginsWithHelloWorld2 : List ( String, String ) -> Bool
beginsWithHelloWorld2 list =
    case list of
        ( "Hello", "World" ) :: xs ->
            True

        _ ->
            False


{-| 与えられた値と同じ値を含んでいれば True を返します
-}
member : a -> List a -> Bool
member a list =
    List.any (\item -> a == item) list


{-| 与えられた関数を満たす要素をリストで返します
-}
collect : (a -> Bool) -> List a -> List a
collect satisfy list =
    List.filter satisfy list


{-| x の小さい順に並び替えます
-}
sortByX : List { x : Int, y : Int } -> List { x : Int, y : Int }
sortByX list =
    List.sortBy .x list


{-| 2つのリストの要素を対にしたリストを作ります
zip [1,2,3]["a", "b"] ==> [(1,"a"), (2,"b")]
-}
zip : List a -> List b -> List ( a, b )
zip list1 list2 =
    List.map2 (,) list1 list2


{-| インデックスと要素を対にしたリストを作ります
zipWithIndex ["foo", "bar"] ==> [(0,"foo"), (1,"bar")]
-}
zipWithIndex : List a -> List ( Int, a )
zipWithIndex list =
    List.indexedMap (,) list


{-| 指定したインデックスの要素を削除します
-}
removeAt : Int -> List a -> List a
removeAt index list =
    List.take index list ++ List.drop (index + 1) list
