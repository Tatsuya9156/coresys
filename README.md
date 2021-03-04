# 🛠coresys
coresysはエクステリア業界向けの業務管理アプリです。  
  
予定管理や顧客管理などの会社内で使用するツールが多岐に渡り、  
アプリを何度も切り替えたりして面倒な思いをしたことはありませんか？  
  
本アプリは顧客管理をはじめ、職人さんとの連絡やタスク管理、  
予定管理(準備中)や在庫管理(準備中)など、このアプリひとつで行うことができます。  
パソコンに不慣れな方でも直感的に使用できるよう心掛けて設計しております。  
  
ぜひご覧ください！

# 🌐URL
![wantedly_1](https://user-images.githubusercontent.com/75982790/109946157-4a5b0480-7d1b-11eb-8133-0d07086069f8.gif)  
![wantedly_2](https://user-images.githubusercontent.com/75982790/109949475-bb4feb80-7d1e-11eb-9f1c-256554e701a9.gif)  
  
URL:https://t-coresys.com  
  
簡単ログイン機能を実装しております。  
ログインボタン下にある「簡単ログイン」からログイン可能です。  
「職人の方はこちらへ」で職人ログインページへ遷移できます。  
そちらでは職人としてゲストログインができるようになっておりますので  
ぜひお試しください。

# 🗒制作の背景
私は前職でエクステリアの販売、施工を行う会社に勤めておりました。  
  
働いていて不便に感じたのが、痒いところに届かない顧客管理システム、  
予定表、在庫管理、連絡ツールなどメインで使用するアプリが  
全て別のアプリで行われていたことで、用途に応じて開くアプリを  
切り替えなければいけない煩わしさでした。  
  
この経験を踏まえ、全ての業務をひとつで行うことが出来て  
これを見れば全ての情報がわかるというアプリがあれば,  
この思いを解決できるのではないかと思い、本アプリを制作しました。

# ✍️目指した課題解決
たくさんの機能を搭載したアプリがあっても、  
使いづらければ誰も使おうと思いません。  
  
特にパソコンに不慣れな方はアプリを導入しても、  
使い方を覚えるのが大変なので、まず使おうとしてくれません。
  
そのため機能の充実ももちろんですが、第一に使いやすさ、  
直感的に使用できるアプリであることに重きを置いて制作しています。

# 🔩機能一覧
### ユーザー管理機能(管理者のみ使用可能です)
 - 社員ユーザー新規登録、編集
 - 職人ユーザー新規登録、編集
### 物件管理機能(社員のみ使用可能です)
 - 物件新規登録、編集、削除機能
 - 現調日新規登録、編集、削除機能
 - 工事日新規登録、編集、削除機能
 - コメント投稿 ※物件ごとに情報共有が可能です。
### チャット機能(一部使用制限があります)
 - グループ新規作成、編集、削除機能(社員のみ使用可能です)
 - メッセージ投稿機能
 - 画像投稿機能(複数枚の投稿が可能)
 - タスク登録(社員のみ使用可能です) ※職人さんからの依頼などタスクの割り振りができます。

# ⛏実装予定
 - 検索機能
 - カレンダー機能
 - Q&Aページ
 - 見積作成機能
 - 発注管理機能
 - 在庫管理機能

# 📖使用技術
### フロントエンド
 - HTML
 - CSS(SCSS)
 - JavaScript
### バックエンド
 - Ruby 2.6.5
 - Ruby on Rails 6.0.3.4
### データベース
 - MySQL2
### テスト
 - RSpec
 - FactoryBot
 - Faker
 - Gimei
### 開発環境
 - RuboCop
 - Bullet
### 本番環境
 - AWS(VPC, EC2, S3, Route53, ACM, ALB)
 - Nginx, Unicorn, MariaDB

# 🗂ER図
![ER](https://user-images.githubusercontent.com/75982790/109944704-d66c2c80-7d19-11eb-9732-b8a7ec609b10.png)  
オレンジ色のテーブルは実装済みです。  
青色のテーブルは今後実装予定のテーブルになります。