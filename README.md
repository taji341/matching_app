# Music Course　修正中・・・

音楽を学びたい人と技能を持つ人を結ぶ予約サイトです。  
音楽に関する自分のレッスンを登録する  
又は気になるレッスンがあればメッセージを送信して連絡をとる事ができます。

# URL
http://54.178.210.246/  
ヘッダーのゲストログインボタンから、メールアドレスとパスワードを入力せずにログインできます。

# インフラ構成図
![名称未設定](https://user-images.githubusercontent.com/100059205/212071015-4d7e8157-6481-4630-858d-f6d398995a6a.png)


# 使用技術
* Ruby 2.7.0
* Ruby on Rails 5.2.1
* MySQL2 0.5.4
* Nginx
* Unicorn
* AWS
* VPC
* EC2
* RDS
* Docker/Docker-compose
* CircleCi CI
* RSpec
* Rubocop

# 機能一覧
* ユーザー登録、ログイン機能(devise)
* レッスン投稿機能
* メッセージ送信機能
* 未読表示機能
* 閲覧回数表示機能
* お気に入り機能(Ajax)
* ランキング機能
* ページネーション機能(kaminari)
* 検索機能(ransack)

# テスト
RSpec
* 機能テスト(request)
* 統合テスト(system)
