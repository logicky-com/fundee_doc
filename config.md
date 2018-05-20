[< TOP](/README.md)

# 設定ファイルの調整
## database.phpの設定内容の変更
データベースの設定で、作成したデータベース・ユーザ名等を、application/app/Config/database.phpに記述します。

以下は例になります。

```
<?php

class DATABASE_CONFIG
{
    public $default = array(
        'datasource' => 'Database/Mysql',
        'persistent' => false,
        'host' => 'mysql111.db.sakura.ne.jp', //データベースのホスト名
        'login' => 'user_name', //ユーザ名
        'password'   => 'password', //パスワード
        'database' => 'database_name', //データベース名
        'prefix' => '',
        'encoding' => 'utf8',
    );
}
```
