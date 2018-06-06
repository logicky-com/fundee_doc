[< TOP](/README.md)

# サーバ自動実行（CRON）の設定

## 対象製品について
- CRONの設定は、FundeeノーマルのALL INバージョンの製品の場合設定が不要です。
- FundeeノーマルのALL OR NOTHINGバージョン、Fundeeダブル、Fundeeデラックスの場合は設定が必要になります。

## CRONとは
- CRONを利用すると、サーバで定期的に自動実行させたいプログラムを設定することができます。
- どのプログラムをどの程度の頻度で実行するかが設定できます。
- レンタルサーバの管理画面にCRONの設定画面があるかと思いますので、そちらで下記を設定してください。

## CRONに登録するコマンドの内容

### FundeeノーマルのALL OR NOTHINGか、Fundeeダブルの場合
- CRONに登録するコマンドは2つです。
- 下記のようにコマンドを設定してください。
- 実行頻度は2分毎に設定してください。 （実行頻度については、下記の『実行させるプログラムの実行頻度について』もご参照ください）

#### 1. CheckAONShellの実行

```
cd /home/hoge/www/fundee_product/app; /usr/local/bin/php /home/hoge/www/fundee_product/app/Console/cake.php CheckAON
```

- /home/hoge/www/fundee_productは、appフォルダが格納されているパスを、 絶対パスで記入する必要があります。正しい内容に置き換えてください。
- /usr/local/bin/php は、実際のサーバのphpのコマンドパスを入力する必要があります。正しい内容に置き換えてください。

#### 2. ExtendCaptureShellの実行

```
cd /home/hoge/www/fundee_product/app; /usr/local/bin/php /home/hoge/www/fundee_product/app/Console/cake.php ExtendCapture
```

### Fundeeデラックスの場合

上記1, 2に加えて下記3, 4も設定してください。

#### 3. CancelMonthlyShellの実行

```
cd /home/hoge/www/fundee_product/app; /usr/local/bin/php /home/hoge/www/fundee_product/app/Console/cake.php CancelMonthly
```

#### 4. CheckMonthlyShellの実行

```
cd /home/hoge/www/fundee_product/app; /usr/local/bin/php /home/hoge/www/fundee_product/app/Console/cake.php CheckMonthly
```

### （参考）CRONで実行させるプログラムの処理内容について
参考としまして、CheckAONShellが実行する内容は、下記になります。

- 募集期日の過ぎたプロジェクトを一つ取り出し、そのプロジェクトが目標達成しているかをチェックする
- プロジェクトの成否結果に応じて、そのプロジェクトに対するすべての支援の決済を確定あるいはキャンセルする
- 支援者・プロジェクト起案者・サイト管理者にメールでプロジェクト成否を通知する

### （参考）実行させるプログラムの実行頻度について
- 実行頻度は、2分毎を想定しております。
- プロジェクトの数が多くなっても問題大丈夫なようにするためと、 接続エラー等で決済処理がエラーになった場合でも、すぐに再度決済処理を実行させるためです。 
- プロジェクト数が少ない場合、実行頻度を下げても特に問題ありません。
