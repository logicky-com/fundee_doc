[< TOP](/README.md)

# サーバーの設定
## 目次
1. [サーバーのドキュメントルートに配置](#1)
1. [さくらサーバに.htaccessを設置する際の注意点](#2)
1. [エックスサーバに.htaccessを設置する際の注意点](#3)
1. [パーミッションの設定](#4)
1. [core.phpによる、本番モード・デバッグモードの切り替えについて](#5)

<a name="1"></a>
## サーバーのドキュメントルートに配置
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

fundee_productフォルダの中身を、サーバのドキュメントルートに配置します。（fundee_product/sqlフォルダは、配置する必要はありません）
ただ、上記のfundee_product/.htaccessの配置には各レンタルサーバ毎に注意が必要になります。 さくらレンタルサーバ、エックスサーバについて下記をご参考ください。

<a name="2"></a>
## さくらサーバに.htaccessを設置する際の注意点
さくらサーバでマルチドメインを利用しない場合、fundee_product/.htaccessの内容をそのまま利用して問題ないですが、マルチドメインを利用する場合、そのままでは動作しません。

### マルチドメインを利用する場合の.htaccessの修正方法
下記3つの.htaccessを修正する必要があります

#### fundee_product/.htaccess
デフォルトでは下記のようになっています。
```
<IfModule mod_rewrite.c>
   RewriteEngine on
   RewriteRule    ^$ app/webroot/    [L]
   RewriteRule    (.*) app/webroot/$1 [L]
</IfModule>
```

これを下記のように、RewriteBase /という行を追加します。
```
<IfModule mod_rewrite.c>
   RewriteEngine on
   RewriteBase /
   RewriteRule    ^$ app/webroot/    [L]
   RewriteRule    (.*) app/webroot/$1 [L]
</IfModule>
```

#### fundee_product/app/.htaccess
下記のように、RewriteBase /appという行を追加します。
```
<IfModule mod_rewrite.c>
   RewriteEngine on
   RewriteBase /app
   RewriteRule    ^$ app/webroot/    [L]
   RewriteRule    (.*) app/webroot/$1 [L]
</IfModule>
```

#### fundee_product/app/webroot/.htaccess
下記のように、RewriteBase /という行を追加します。
```
<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteRule ^ index.php [L]
</IfModule>
```

<a name="3"></a>
## エックスサーバに.htaccessを設置する際の注意点
エックスサーバーには、当初から.htaccessに数行の設定が書き込まれています。 これを削除してしまうときちんと動作しなくなる可能性がありますので、既存の内容を削除せずに、 fundee_product/.htaccessの内容を追記します。

### fundee_product/.htaccess
例として下記のようにします。

```
suPHP_ConfigPath /home/hoge/exmaple.com/xserver_php/
AddHandler fcgid-script .php .phps
FCGIWrapper "/home/hoge/example.com/xserver_php/php-cgi" .php
FCGIWrapper "/home/hoge/example.com/xserver_php/php-cgi" .phps

RewriteEngine on
RewriteRule    ^$ app/webroot/    [L]
RewriteRule    (.*) app/webroot/$1 [L]
```

<a name="4"></a>
## パーミッションの設定
下記ファイルを、パーミッション757に設定してください

- fundee_product/app/tmp以下のすべてのファイル
- fundee_product/app/webroot/tmp以下のすべてのファイル
- fundee_product/app/webroot/upload以下のすべてのファイル

<a name="5"></a>
## core.phpによる、本番モード・デバッグモードの切り替えについて
fundee_product/app/Config/core.phpの18行目（付近）にある、下記の行の数字を0にすることで本番モードとなり、 各種エラーがブラウザに表示されなくなります。1以上にするとデバッグモードとなり、ブラウザに各種エラーが表示されます。

```
Configure::write('debug', 2);
```

### database.phpの設定内容について
database.phpは、使用するデータベースへの接続情報を記述します。後ほどデータベースの設定後に修正します。


