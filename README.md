![logo_big](https://user-images.githubusercontent.com/81852866/201279472-76e2ffc2-0fb6-4eaf-be56-734d08f39d42.png)

## ■ サービスURL
https://oshimotomu.fly.dev/

## ■ サービス概要
推しがいない人には新たな推しとの出会いを提供し、
既に推しがいる人には布教の場を提供するサービスです。

## ■ 画面遷移図
https://www.figma.com/file/yx6Ks5LfpCuKDECLkD1qof/oshimotomu?node-id=0%3A1

## ■ ER図
![ER図](https://user-images.githubusercontent.com/81852866/197425759-030555ce-72fb-4203-bc9f-38b5d7e116df.png)

## ■ 使用技術
### フロントエンド
- HTML/CSS
- CSSフレームワーク
  - tailwind CSS
  - daisyUI
- Hotwire(Rails)
  - Turbo Drive
  - Turbo Frames
  - Turbo Streams
  - Stimulus
### バックエンド
- Ruby3.1.2
- Rails7.0.4
  > 主要なgem
    - sorcery(認証)
    - ransack(検索)
    - kaminari(ページネーション)
    - chartkick(円グラフ)
### インフラ
- fly.io
- postgreSQL

## ■メインのターゲットユーザー
20〜30代前半の女性<br>
アイドルやアニメ、舞台などの「オタク」を自認する方<br>
特に推しの活動休止などによる「推しロス」に悩む方<br>

## ■ユーザーが抱える課題
- 推しを探している人
  →推せる対象を探す良い方法がない

- 既に推しがいる人
  →推しのファンになってくれそうな人に布教したいが、条件に合う人を探す場がない

## ■解決方法
- 推しを募集することができ、それを見た人が好みに合いそうな推し対象を紹介してくれる仕組みを作る
- 布教したい人は自由に布教でき、推しを探す人は検索することができるようにする
- 以前の推しと現在の推しを登録することができ、統計を公開することで自分の好みに合いそうな推し対象を探す助けとする

## ■実装予定の機能
### ログインユーザー
- 推し募集を投稿することができる
- 推し募集を検索、閲覧することができる
- 推し募集に対して回答することができる
- 推し募集をお気に入りすることができる
- 布教を投稿することができる
- 布教を検索、閲覧することができる
- 布教をお気に入りすることができる
- 布教にコメントすることができる
- マイページで自分の投稿した推し募集、回答、布教、お気に入り、コメントを確認できる
- DBに未登録の推し対象を登録することができる
- 推し対象ごとに、元◯◯推しユーザーが現在誰推しか？の割合と、現在の◯◯推しユーザーが元誰推しか？の割合を閲覧できる

  ### 推し募集を投稿したユーザー
  - 回答に対して「推せる」ボタンを押すことができる
<br>

### 未ログインユーザー
- 推し募集ページを検索、閲覧することができる
- 布教ページを検索、閲覧することができる
- 推し対象ごとに、元◯◯推しユーザーが現在誰推しか？の統計と、現在の◯◯推しユーザーが元誰推しか？の割合を閲覧できる
- サインアップできる
- ログインできる
<br>

## ■なぜこのサービスを作りたいのか？
きっかけは、友人の推していたアイドルが活動休止してしばらく経った後、友人から「誰かにハマりたいんだけどいい人いない？」と聞かれたことことでした。私の母も同じアイドルを推しておりましたが、最近では特定の推しというのはいないようで、以前のように熱心にライブ映像を見るようなことはありません。<br>
恐らく私の身近な範囲だけではなく、推しに向けていた情熱のやり場を失ったことのある人は他にも大勢いるだろうと予想しました。<br>
そのような方が新たな推しに出会い、より毎日を楽しく過ごすための助けとなるようなサービスになれば嬉しいと思い、このサービスを企画しました。
