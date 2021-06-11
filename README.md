# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

- アプリケーション名	ウチのネコ、泊めてくれませんか。（nekotome）
- アプリケーション概要	guestユーザー,hostユーザーそれぞれのニーズをマッチングする。
　　　　　　　　　　　　コンタクトを手軽に取れるDM機能・フォロー機能、host-userを評価する機能（レビューや段階評価）がある。
- URL：デプロイが済んでいないため、デプロイが完了次第記述する。
- テスト用アカウント：nickname:test, 

- 利用方法：ユーザー（guest:預ける人、又はhost:預かる人　どちらも可）登録を行い、guestユーザーは、hostユーザーの一覧から自分が求める条件に合ったhostユーザーを探し、DMを送りコンタクトを取る。信頼できるならば、正式に宿泊依頼を送りhostユーザーはこれを受理する。その後の詳細な打ち合わせについてもDM機能を使用し行う。宿泊利用後は、guestユーザーからhostユーザーに対して評価を行う。再度利用したい場合には、フォローしておいてすぐコンタクトを取れる状態にしておく。
- 目指した課題解決：ネコを飼っている人が気軽に旅行や会社の出張で家を開ける際に、近所にいる信頼のおけるhostユーザーに"家族"であるネコを預けて安心して旅行を楽しんだり、仕事に集中する環境を作る。
- 洗い出した要件：https://gyazo.com/5073e98dc5fa8f92a9c9d914193046ac
- 実装した機能についての画像やGIFおよびその説明	：実装後、順次と投稿していく。
- 実装予定の機能：要件定義にある機能を順次、実装していく。
- データベース設計：application.dioファイル参照。
- ローカルでの動作方法：開発環境:ruby 2.6.5, Rails 6.0.0
＜以下のコマンドを順にターミナル上で入力＞
```
git clone https://github.com/kengolgol/neko_tome.git 
```
```
cd (ダウンロードしたクローンアプリのパス)
```

```
rails db:create
```
```
rails db:migrate
```
```
rails s
```
＜ブラウザにてURLにアクセス＞
⑥ https://localhost:3000
