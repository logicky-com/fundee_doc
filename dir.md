[< TOP](/README.md)

# フォルダ構成

## ダウンロードファイルのフォルダ構成
ダウンロードファイル、fundee.zipを展開すると、下記のフォルダ構成になっています。 applicationフォルダ内のファイルが、サーバに格納するプログラム一式です。 sqlフォルダ内のinit.sqlが、データベースにインポートするsqlファイルです。 docフォルダ内には、本ドキュメントのhtmlファイルが格納されています。

```
fundee_scratch
├─application
├─sql
└─doc
```

## applicationフォルダ内のフォルダ・ファイル構成
実際にサーバに格納するプログラムは、applicationフォルダ内のファイルになります。applicationフォルダ内のファイルを、 サーバのドキュメントルート直下に配置することで、プログラムが動作します。以下は、applicationフォルダ内の主要なフォルダ構成です。

```
application
├─app
│  ├─Config            ... 各種設定ファイルが全て入っています
│  ├─Console           ... CRONで実行させるプログラムが入っています
│  ├─Controller        ... コントローラファイルが全て入っています
│  ├─Model             ... モデルファイルが全て入っています
│  ├─Plugin
│  │  ├─Filebinder     ... 画像アップロード処理のプラグイン
│  │  └─LogiAuth       ... 認証系プラグイン
│  │     └─View        ... 認証系画面のViewファイルが格納されています
│  ├─tmp
│  │  └─logs           ... CakePHPが生成するエラーログが出力されます
│  ├─Vendor
│  │  ├─facebook       ... FacebookのSDK
│  │  ├─stripe         ... StripeのSDK
│  │  └─Twitter        ... TwitterのSDk
│  ├─View              ... 認証系画面以外のViewファイルが全て格納されています
│  │  ├─BackedProjects ... 決済画面系のView
│  │  ├─BackingLevels  ... 支援パターン（リターン内容）系のView
│  │  ├─Base           ... TOPページのView
│  │  ├─Categories     ... カテゴリー系のView
│  │  ├─Comments       ... コメント系のView
│  │  ├─Contact        ... お問合せ画面系のView
│  │  ├─Elements       ... Viewで利用される各パーツ
│  │  ├─Emails         ... 各種通知メールのテンプレート
│  │  ├─Errors         ... エラー画面のView
│  │  ├─FavouriteProjects ... お気に入り系のView
│  │  ├─Layouts        ... レイアウトファイル
│  │  │  └─Emails      ... メールのレイアウトファイル
│  │  ├─Messages       ... メッセージ画面系View
│  │  ├─Pages          ... 各種静的画面のView
│  │  ├─ProjectContents ... プロジェクト詳細系View
│  │  ├─Projects       ... プロジェクト系View
│  │  ├─ReportContents ... 活動報告詳細系View
│  │  ├─Reports        ... 活動報告系View
│  │  └─Users          ... ユーザー系view
│  └─webroot           ... ドキュメントルートに対応するフォルダ
│      ├─bootstrap     ... HTMLフレームワークbootstrap
│      ├─css           ... CSSファイルが格納されています
│      ├─font          ... フォントファイルが格納されています
│      ├─img           ... 画像ファイルが格納されています
│      ├─js            ... Javascriptファイルが格納されています
│      ├─tmp           ... 画像アップロード時に利用するtmpフォルダです
│      └─upload        ... アップロードされた画像が格納されます。定期的バックアップが必要です。
└─lib ... CakePHPフレームワークの本体一式が格納されています。
```