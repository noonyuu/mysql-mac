# 手順

1. docker をインストール
2. インストール確認 `docker -v`
3. コンテナの起動 `docker compose up -d`
4. コンテナに入る `docker compose exec db bash`
5. ログイン
   1. `mysql -u root -p`
   2. Password : `root`
6. db 変更 `use db`
7. 日本語が使えるか確認 `select * from test_table where name = 'テスト';`
8. 作成した db は ddl 直下に配置してログイン、db 変更後に `source /ddl/create.sql;`のように実行
9. 動作しているか確認 `select * from users;`
10. `localhost:3001` でphpMyAdminに接続できるか確認
  ※サービス名を変更した際は適時変更しないとエラーになる
11. 動かなかったりエラーが出たら頑張って解決してね

## compose.ymlに変更を加えた時

1. `docker compose up --build -d`

## 注意

作成者は一応動作確認しています(2025/4/14)
あくまでも授業用の環境なので本番環境では DB のパスワードなどを適宜変更した上で公開しないようにしましょう。
