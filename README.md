# 🛠coresys
coresysはエクステリア業界向けの業務管理アプリです。  
  
予定管理や顧客管理などの会社内で使用するツールが多岐に渡り、  
アプリを何度も切り替えたりして面倒な思いをしたことはありませんか？  
  
本アプリは顧客管理をはじめ、予定管理(準備中)や在庫管理(準備中)、  
職人さんとの連絡など、このアプリひとつで行うことができます。  
パソコンに不慣れな方でも直感的に使用できるよう心掛けて設計しております。  
  
ぜひご覧ください！

# 🌐URL
URL:https://t-coresys.com  
以下のアカウントでログインができます。
1. 社員アカウント  
 Email:test1@example.com  
 パスワード:coresys0001
2. 職人アカウント  
 Email:testtest1@example.com  
 パスワード:coresys5001

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
### ユーザー管理機能(管理者のみ使用可能)  
 - 社員新規登録、編集機能機能  
 - 職人登録、編集機能機能  
### 物件管理機能(社員のみ使用可能)  
 - 物件新規登録、編集機能  
 - コメント投稿機能(物件毎)  
### チャット(社員、職人ともに使用可能)
 - グループ新規作成、編集機能(社員のみ使用可能)  
 - メッセージ投稿機能  
 - 画像投稿機能(複数枚の投稿が可能)

# ⛏実装予定
 - カレンダー機能
 - 在庫管理機能
 - タスク管理機能
 - 検索機能
 - 見積作成機能
 - 発注管理機能
 - Q&Aページ

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
### 本番環境
 - AWS(VPC, EC2, S3, Route53, ACM, ALB)
 - Nginx, Unicorn, MariaDB

# 🗂ER図
![ER](https://user-images.githubusercontent.com/75982790/108059263-93168a80-7098-11eb-8298-de7492d313c7.png)