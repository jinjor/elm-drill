module Q5_Records exposing (..)

{-| レコード

  - 名前付きフィールドをもつデータです
  - 人や物など何か意味のあるものを表す場合はタプルよりもレコードを使います。

参照:

  - <https://guide.elm-lang.org/core_language.html>
  - <https://guide.elm-lang.org/types/type_aliases.html>
  - <http://package.elm-lang.org/packages/elm-lang/core/latest/Tuple>

-}


{-| { name : String, age : Int } は `name` `age` という 2 つのフィールドをもつ
レコードです。
`object.name` で `name` フィールドを取得することができます。
-}
getName : { name : String, age : Int } -> String
getName object =
    object.name


{-| 別の書き方です。`.name` は `name` フィールドを取得する関数です
-}
getName2 : { name : String, age : Int } -> String
getName2 object =
    .name object


{-| 毎回 `{ .. }` と書くのは辛いので、型に別名（`Person`）をつけます。
-}
type alias Person =
    { name : String
    , age : Int
    }


{-| 年齢を取得します
-}
getAge : Person -> Int
getAge object =
    Debug.crash "TODO"


{-| Person 型を作ります
-}
makeUser : String -> Int -> Person
makeUser name age =
    { name = name, age = age }


{-| Person 型を作ります。`User` という名前の関数を使ってレコードを作ることができます。
型で表すと `Person : String -> Int -> User` となります。
-}
makeUser2 : String -> Int -> Person
makeUser2 name age =
    Person name age


{-| 新しい名前をつけます。
全ての値はイミュータブルであるため、元のレコードは変化しません。
-}
rename : String -> Person -> Person
rename newName user =
    Debug.crash "TODO"


{-| 年齢を1つ増やします
-}
incrementAge : Person -> Person
incrementAge user =
    Debug.crash "TODO"


{-| 有効なデータかどうかを判断します。
ここでは、名前が空文字や空白文字ではなく、年齢が 0 歳以上であればよしとします。
-}
isValid : Person -> Bool
isValid user =
    Debug.crash "TODO"


{-| `{ a | role : String }` は `role` というプロパティを持った何かです。
自分で使うことよりもコンパイルエラーで目にする機会が多いです。
-}
getRole : { a | role : String } -> String
getRole object =
    Debug.crash "TODO"
