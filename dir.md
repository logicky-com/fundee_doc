[< TOP](/README.md)

# フォルダ構成

## ダウンロードファイルのフォルダ構成
- ダウンロードファイル、fundee.zipを展開すると、下記のフォルダ・ファイル構成になっています。 
- fundee_productフォルダ内のフォルダおよびファイル全て（fundee_product/sqlフォルダ以外）を、サーバに格納いただきます。
- fundee_product/sqlフォルダ内のinit.sqlが、データベースにインポートするsqlファイルです。 

```
fundee_product
├── app            ... 本システムの主要機能は全てこのappフォルダ内にあります
├── composer.json
├── composer.lock
├── index.php
├── lib            ... CakePHPフレームワークの本体一式
├── plugins
└── sql
    └── init.sql   ... データベースにインポートするsqlファイル
```

## appフォルダ内の主要なフォルダ・ファイル構成
本システムの主要なフォルダ・ファイル構成は下記になります。

```
app
├── Config                 ... 各種設定ファイルが全て入っています
├── Console                ... CRONで実行させるプログラムが入っています
├── Controller             ... コントローラファイルが全て入っています
├── Model                  ... モデルファイルが全て入っています
├── Plugin
│   ├── Filebinder         ... 画像アップロード処理のプラグイン
│   ├── LogiAuth           ... 認証系プラグイン
│   └── Migrations
├── Vendor
│   ├── Twitter            ... TwitterのSDK
│   ├── facebook           ... FacebookのSDK
│   ├── stripe             ... StripeのSDK
│   └── symfony
├── View                   ... 認証系画面以外のViewファイルが全て格納されています
│   ├── Admin              ... 管理画面のView
│   ├── BackedProjects     ... 決済画面系のView
│   ├── BackingLevels      ... 支援パターン（リターン内容）系のView
│   ├── Base               ... TOPページのView
│   ├── Card               ... カード登録画面のView
│   ├── Categories         ... カテゴリー系のView
│   ├── Comments           ... コメント系のView
│   ├── Contact            ... お問合せ画面系のView
│   ├── Elements           ... Viewで利用される各パーツ
│   ├── Emails             ... 各種通知メールのテンプレート
│   ├── Errors             ... エラー画面のView
│   ├── FavouriteProjects  ... お気に入り系のView
│   ├── Helper
│   ├── Layouts            ... レイアウトファイル
│   │   └── Emails         ... メールのレイアウトファイル
│   ├── Messages           ... メッセージ画面系View
│   ├── Pages              ... 各種静的画面のView
│   │   ├── about.ctp      ... About(◯◯とは？)のView
│   │   ├── policy.ctp     ... プライバシーポリシーのView
│   │   ├── rule.ctp       ... 利用規約のView
│   │   └── tokutei.ctp    ... 特定商取引法のView
│   ├── ProjectContents    ... プロジェクト詳細系View
│   ├── Projects           ... プロジェクト系View
│   ├── ReportContents     ... 活動報告詳細系View
│   ├── Reports            ... 活動報告系View
│   ├── Scaffolds
│   └── Users              ... ユーザー系view
├── index.php
├── tmp                    ... CakePHPが生成するエラーログやキャッシュファイルが出力されます
└── webroot                ... ドキュメントルートに対応するフォルダ
    ├── bootstrap          ... HTMLフレームワークbootstrap
    ├── css                ... CSSファイルが格納されています
    ├── favicon.ico        
    ├── font               ... フォントファイルが格納されています
    ├── img                ... 画像ファイルが格納されています
    ├── index.php
    ├── js                 ... Javascriptファイルが格納されています
    ├── test.php
    ├── tmp                ... 画像アップロード時に利用するtmpフォルダです
    └── upload             ... アップロードされた画像が格納されます。定期的バックアップが必要です。
```
