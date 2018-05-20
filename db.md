[< TOP](/README.md)

# データベースの設定
## インポートするSQLファイルの場所
ダウンロードしたfundee.zipを展開すると、下記のような構成になっています。

```
fundee_product
├── .htaccess
├── app            ... 本システムの主要機能は全てこのappフォルダ内にあります
├── composer.json
├── composer.lock
├── index.php
├── lib            ... CakePHPフレームワークの本体一式
├── plugins
└── sql
    └── init.sql   ... データベースにインポートするsqlファイル
```
fundee_product/sqlフォルダの中にある、init.sqlがインポート対象のsqlファイルです。

## MySQLでデータベースを作成します
任意のデータベース名でデータベースを新規に作成します。文字コードはUTF-8、照合順序は、utf_unicode_ciにしてください。

## ユーザを作成します
任意のユーザ名でユーザを作成します。ユーザ作成の際に設定したパスワードをメモしておきます。

## sqlファイルをインポートします
作成したデータベースに、init.sqlをインポートします。
