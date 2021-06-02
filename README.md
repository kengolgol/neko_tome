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
- URL	（デプロイ済みのURLを記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。）
- テスト用アカウント	（ログイン機能等を実装した場合は、ログインに必要な情報を記述。またBasic認証等を設けている場合は、そのID/Passも記述すること。）
- 利用方法	ユーザー（guest:預ける人、又はhost:預かる人　どちらも可）登録を行い、
　　　　　　guestユーザーは、hostユーザーの一覧から自分が求める条件に合ったhostユーザーを探し、DMを送りコンタクトを取る。
　　　　　　信頼できるならば、正式に宿泊依頼を送りhostユーザーはこれを受理する。その後の詳細な打ち合わせについてもDM機能を使用し行う。
　　　　　　宿泊利用後は、guestユーザーからhostユーザーに対して評価を行う。再度利用したい場合には、フォローしておいてすぐコンタクトを取れる状態に
　　　　　　しておく。
- 目指した課題解決	ネコを飼っている人が気軽に旅行や会社の出張で家を開ける際に、近所にいる信頼のおけるhostユーザーに"家族"であるネコを預けて
　　　　　　　　　　安心して旅行を楽しんだり、仕事に集中する環境を作る。
　　　　　　　　　　 今後、価格設定などを機能として取り込むことで、猫カフェなどの民間事業団体が収益源の一つとして利用することが可能になる。
- 洗い出した要件	（スプレッドシートにまとめた要件定義を記述。）
- 実装した機能についての画像やGIFおよびその説明	（実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。）
- 実装予定の機能	（洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。）
- データベース設計	　application.dioファイル参照
- ローカルでの動作方法	（git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。）
