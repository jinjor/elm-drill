# Elm ドリル

手を動かしながら Elm の文法に慣れるためのドリルです。文法の解説はしていないので別途ドキュメントが必要です。このドリルはあくまで手を動かしながら慣れるのと、どこまで理解したかをチェックするために使います。

## ターゲット

JavaScript ユーザー、あるいは静的型付けや関数型言語にあまり馴染みのない人向けです。

## ゴール

* 関数型言語の基本的な作法が分かる
* 型が読めるようになる
* [公式ガイド](https://guide.elm-lang.org/)や[API ドキュメント](https://package.elm-lang.org/)を読んで理解できるようになる
* 既存コードに手が入れられるようになる

## 準備

(1) 環境を用意する

```
$ npm install -g elm
$ npm install -g elm-format
$ npm install -g elm-test@beta # 執筆時点で latest が Elm 0.19 に対応していないため
```

環境を汚したくない人は各自でよろしくやってください。

(2) エディタの設定

elm-format がエディタから動くようにします。
https://github.com/avh4/elm-format#editor-integration

(3) このリポジトリをクローンする

```
$ git clone https://github.com/jinjor/elm-drill.git
$ cd elm-drill
```

## 進め方

### 問題を解く

それぞれの問題はユニットテストになっています。以下のコマンドで実行できます。

```sh
$ elm-test tests/Tests.elm
```

関数が実装されていないので失敗します。src/Q1_Numbers.elm を見てください。

```elm
{-| n から 1 を引いて返します
-}
decrement : Int -> Int
decrement n =
    Debug.todo "TODO"
```

`Debug.todo "TODO"` を埋めましょう。

### 次のセクションに進む

tests/Tests.elm に実行対象のテスト一覧があります。
`only` のついたものが実行されるので、終わったら（※）次のテストに `only` を付け替えてください。

```elm
suite : Test
suite =
    describe "All"
        [ only T1_Numbers.suite
        , T2_Booleans.suite
        , T3_Strings.suite
        , T4_Tuples.suite
        , T5_Records.suite
        , T6_Functions.suite
        , T7_Lists.suite
        , T8_Maybes.suite
        , T9_CustomTypes.suite
        , T10_Decoders.suite
        ]
```

※ `TEST RUN INCOMPLETE because Test.only was used` と表示されます。

## ヒント

* 極力ライブラリに用意されている関数を使ってください
* 0 割りなどのエッジケースは省いてあるので気にしなくて大丈夫です
* 外部パッケージをインストールして使うことはありません
* 答えは answers/ 以下にあります

## 主な学習リソース

* [公式サイト](https://elm-lang.org/)
* [ガイド](https://guide.elm-lang.org/)
* [API](https://package.elm-lang.org/)
* [標準ライブラリ](https://package.elm-lang.org/packages/elm/core/latest)
* [関数プログラミング](https://evancz.gitbooks.io/functional-programming-in-elm/)

## その他

不具合・改善点があれば issue や Twitter で教えてください。このリソースの転用は自由です。
