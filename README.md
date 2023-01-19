# Music Course

![スクリーンショット 2023-01-15 23 06 02](https://user-images.githubusercontent.com/100059205/212545478-dec908b8-3697-47d7-ae13-df18400e94de.png)
![スクリーンショット 2023-01-20 5 05 39](https://user-images.githubusercontent.com/100059205/213548628-3379d14d-1835-4dd0-9bde-96f5d810f243.png)

音楽を学びたい人と技能を持つ人を結ぶ予約サイトです。  
音楽に関する自分のレッスンを登録する  
又は気になるレッスンがあればメッセージを送信して連絡をとる事ができます。

# URL
https://www.musiccourse.net/
ヘッダーのゲストログインボタンから、メールアドレスとパスワードを入力せずにログインできます。

# インフラ構成図
![名称未設定](https://user-images.githubusercontent.com/100059205/212478812-56d93562-725d-4e96-a1cf-90d1167bc8a6.png)

# ERD図
<img width="725" alt="スクリーンショット 2023-01-15 21 47 28" src="https://user-images.githubusercontent.com/100059205/212541445-af4471fc-13cc-42b1-b4da-b9597572b0ad.png">

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
* Route53
* Docker/Docker-compose
* CircleCi CI
* RSpec
* Rubocop

# 機能一覧
* ユーザー登録、ログイン機能(devise)
* レッスン投稿機能
* メッセージ送信機能
* 未読表示機能
* 閲覧回数表示機能(impressionist)
* お気に入り機能(Ajax)
* ランキング機能
* ページネーション機能(kaminari)
* 検索機能(ransack)

# テスト
RSpec
* 機能テスト(request)
* 統合テスト(system)
