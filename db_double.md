

[ < TOP](/README.md)

# テーブル定義書
## テーブル名一覧
- [areas](#areas)
- [attachments](#attachments)
- [backed_projects](#backed_projects)
- [backing_levels](#backing_levels)
- [categories](#categories)
- [comments](#comments)
- [favourite_projects](#favourite_projects)
- [mail_auths](#mail_auths)
- [message_pairs](#message_pairs)
- [messages](#messages)
- [project_content_orders](#project_content_orders)
- [project_contents](#project_contents)
- [projects](#projects)
- [report_content_orders](#report_content_orders)
- [report_contents](#report_contents)
- [reports](#reports)
- [schema_migrations](#schema_migrations)
- [settings](#settings)
- [users](#users)

<a name="areas"></a>
## areas
##### エリア（カテゴリ２）
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|name|varchar(200)|||||エリア（カテゴリ２）名
|3|order|int(2)||1|||表示順

<a name="attachments"></a>
## attachments
##### 画像アップロード用
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|model|text|||||
|3|model_id|int(11)|||||
|4|field_name|text|||||
|5|file_name|text|||||
|6|file_content_type|text|||||
|7|file_size|int(11)|||||
|8|file_object|text|○||||
|9|created|datetime|||||
|10|modified|datetime|||||

<a name="backed_projects"></a>
## backed_projects
##### 決済データ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|project_id|int(11)|○||||プロジェクトID
|3|user_id|int(11)|○||||ユーザID
|4|backing_level_id|int(11)|○||||支援パターンID
|5|invest_amount|varchar(50)|||||支援金額
|6|comment|text|||||支援コメント
|7|stripe_charge_id|varchar(255)|○||||StripeのChargeのID
|8|status|varchar(30)||作成完了|||決済ステータス
|9|created|datetime|○||||データ作成日時
|10|modified|datetime|○||||データ更新日時
|11|manual_flag|tinyint(1)||0|||手動登録フラグ
|12|extended_capture_date|date|○||||
|13|extended_capture_fail|int(2)||0|||

<a name="backing_levels"></a>
## backing_levels
##### 支援パターン（リターン内容）
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|project_id|int(11)|○||||プロジェクトID
|3|name|varchar(100)|||||支援パターン名
|4|invest_amount|varchar(200)|||||最低支援額
|5|return_amount|text|||||リターン内容
|6|max_count|int(5)|○||||最大支援数
|7|now_count|int(5)||0|||現在の支援数
|8|delivery|int(1)|○|1|||リターン方法
|9|created|datetime|○||||データ作成日時
|10|modified|datetime|○||||データ更新日時

<a name="categories"></a>
## categories
##### カテゴリ１
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|name|varchar(200)|||||カテゴリ１名
|3|order|int(2)||1|||表示順
|4|show_top_flag|tinyint(1)||0|||

<a name="comments"></a>
## comments
##### コメント
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|user_id|int(11)|○||||ユーザID
|3|project_id|int(11)|○||||プロジェクトID
|4|comment|text|||||コメント
|5|created|datetime|○||||データ作成日時

<a name="favourite_projects"></a>
## favourite_projects
##### お気に入りプロジェクト
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|user_id|int(11)|○||||ユーザID
|3|project_id|int(11)|○||||プロジェクトID
|4|backed|varchar(20)|||||
|5|created|datetime|○||||データ生成日時

<a name="mail_auths"></a>
## mail_auths
##### メールアドレス認証用
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|email|varchar(255)|||||メールアドレス
|3|token|varchar(255)|||||トークン
|4|user_id|int(10)|○||||ユーザID
|5|modified|datetime|||||データ更新日時

<a name="message_pairs"></a>
## message_pairs
##### メッセージ送受信者ペア
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|message_pair_id|varchar(23)|||○||メッセージ送受信者ペアID
|2|last_sender_id|int(11)|||||最後の送信者
|3|last_receiver_id|int(11)|||||最後の受信者
|4|read_flag|tinyint(1)||0|||既読フラグ
|5|modified|datetime|||||データ更新日時

<a name="messages"></a>
## messages
##### メッセージ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|message_pair_id|varchar(10)|||||メッセージ送受信者ペアID
|3|from_id|int(11)|||||送信者ID
|4|to_id|int(11)|||||受信者ID
|5|content|text|||||メッセージ文
|6|created|datetime|○||||データ作成日時

<a name="project_content_orders"></a>
## project_content_orders
##### プロジェクト詳細のコンテンツの表示順
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|project_id|int(10)|||○||プロジェクトID
|2|order|text|||||表示順

<a name="project_contents"></a>
## project_contents
##### プロジェクト詳細のコンテンツ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(10)|||○||
|2|project_id|int(10)|||||プロジェクトID
|3|open|int(4)||0|||公開ステータス
|4|type|varchar(20)||text|||コンテンツ種別
|5|txt_content|text|○||||テキストコンテンツ内容
|6|movie_type|varchar(10)||youtube|||動画種別
|7|movie_code|varchar(50)|○||||動画コード
|8|img_caption|varchar(100)|○||||画像キャプション

<a name="projects"></a>
## projects
##### プロジェクト
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|setting_id|int(10)|||||
|3|project_name|varchar(200)|||||プロジェクト名
|4|category_id|int(11)|○||||カテゴリ１ID
|5|area_id|int(10)|○||||エリアID
|6|description|text|||||プロジェクト概要
|7|goal_amount|varchar(100)|||||目標金額
|8|collection_term|int(2)||60|||募集期間（日）
|9|collection_start_date|datetime|○||||募集開始日時
|10|collection_end_date|datetime|○||||募集終了日時
|11|thumbnail_type|int(1)||1|||サムネイル種別
|12|thumbnail_movie_type|varchar(10)|○|youtube|||サムネイルの動画種別
|13|thumbnail_movie_code|varchar(50)|○||||サムネイルの動画コード
|14|user_id|int(11)|○||||ユーザID
|15|opened|varchar(3)||no|||公開ステータス
|16|backers|int(11)|○|0|||支援者数
|17|comment_cnt|int(4)||0|||コメント数
|18|report_cnt|int(3)||0|||活動報告数
|19|collected_amount|int(10)|○|0|||現在の支援総額
|20|max_back_level|varchar(20)|||||支援パターン数
|21|created|datetime|○||||データ作成日時
|22|modified|datetime|○||||データ更新日時
|23|active|varchar(1)||1|||募集中
|24|stop|tinyint(1)||0|||公開停止ステータス
|25|return|text|||||リターン概要
|26|contact|text|||||プロジェクト起案者の連絡先
|27|rule|tinyint(1)||0|||利用規約同意有無
|28|site_fee|int(2)|○||||サイト手数料率
|29|site_price|int(10)||0|||サイト手数料
|30|project_owner_price|int(10)||0|||プロジェクト起案者への支払額
|31|pay_pattern|int(1)||1|||
|32|no_goal|tinyint(1)||0|||
|33|goal_backers|int(8)|○||||

<a name="report_content_orders"></a>
## report_content_orders
##### 活動報告詳細コンテンツの表示順
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|report_id|int(10)|||○||活動報告ID
|2|order|text|||||表示順

<a name="report_contents"></a>
## report_contents
##### 活動報告詳細のコンテンツ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(10)|||○||
|2|report_id|int(10)|||||活動報告ID
|3|type|varchar(20)||text|||コンテンツ種別
|4|txt_content|text|○||||テキストコンテンツ内容
|5|movie_type|varchar(10)||youtube|||動画種別
|6|movie_code|varchar(50)|○||||動画コード
|7|img_caption|varchar(100)|○||||画像キャプション

<a name="reports"></a>
## reports
##### 活動報告
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|project_id|int(11)|||||プロジェクトID
|3|open|tinyint(1)||0|||公開ステータス
|4|title|varchar(200)|||||タイトル
|5|created|datetime|||||データ作成日時
|6|modified|datetime|||||データ更新日時
|7|first_open_flag|tinyint(1)||0|||

<a name="schema_migrations"></a>
## schema_migrations
##### 
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|class|varchar(255)|||||
|3|type|varchar(50)|||||
|4|created|datetime|||||

<a name="settings"></a>
## settings
##### 各種設定データ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(1)|||○||
|2|user_id|int(10)|||||ユーザID
|3|stripe_key|varchar(255)|○||||Stripe 公開可能キー
|4|stripe_secret|varchar(255)|○||||Stripe シークレットキー
|5|stripe_test_key|varchar(255)|○||||Stripe 公開可能キー（テスト用）
|6|stripe_test_secret|varchar(255)|○||||Stripe シークレットキー（テスト用）
|7|stripe_mode|tinyint(1)||0|||Stripeの本番モード (1)or テストモード(0)
|8|twitter_api_key|varchar(255)|○||||Twitter API Key
|9|twitter_api_secret|varchar(255)|○||||Twitter API Secret
|10|facebook_api_key|varchar(255)|○||||Facebook API Key
|11|facebook_api_secret|varchar(255)|○||||Facebook API Secret
|12|fee|int(2)||20|||サイト手数料
|13|site_open|tinyint(1)||0|||サイト公開ステータス
|14|site_name|varchar(100)|||||サイト名
|15|site_title|varchar(255)|○||||サイトタイトル
|16|site_description|text|○||||サイト紹介文
|17|site_keywords|varchar(255)|○||||メタキーワード
|18|about|text|○||||Aboutページの表示文章
|19|company_name|varchar(100)|○||||会社名（団体名）
|20|company_type|int(1)||1|||法人or個人
|21|company_url|varchar(255)|○||||会社URL
|22|company_ceo|varchar(50)|○||||会社代表者名
|23|company_address|varchar(255)|○||||会社住所
|24|company_tel|varchar(30)|○||||会社電話番号
|25|copy_right|varchar(50)|○||||コピーライト表示内容
|26|from_mail_address|varchar(255)|○||||送信先メールアドレス
|27|admin_mail_address|varchar(255)|○||||管理者通知メールアドレス
|28|mail_signature|text|||||メール署名
|29|toppage_projects_ids|varchar(150)|○||||オススメプロジェクト
|30|toppage_pickup_project_id|int(10)|○||||ピックアッププロジェクト
|31|toppage_new_projects_flag|tinyint(1)||0|||新着プロジェクト
|32|toppage_ok_projects_flag|tinyint(1)||0|||達成したプロジェクト
|33|link_color|varchar(6)|○|006699|||リンクの文字色
|34|back1|varchar(6)||f2f2f2|||背景１の色
|35|back2|varchar(6)||d2d2d2|||背景２の色
|36|border_color|varchar(6)||999999|||枠線の色
|37|top_back|varchar(6)|○|ffffff|||トップの背景色
|38|top_color|varchar(6)|○|000000|||トップの文字色
|39|top_alpha|int(2)||80|||トップの透明度
|40|footer_back|varchar(6)|○|d5d5d5|||フッターの背景色
|41|footer_color|varchar(6)|○|353539|||フッターの文字色
|42|graph_back|varchar(6)|○|0099cc|||達成率グラフの背景色
|43|top_box_back|varchar(6)||cceeff|||トップ上段の背景色
|44|top_box_black|int(2)||60|||トップ上段の黒の透明度
|45|top_box_color|varchar(6)||000000|||トップ上段の文字色
|46|top_box_height|int(3)||500|||トップ上段の高さ
|47|top_box_content_num|int(1)||1|||トップ上段のコンテンツ数
|48|content_type1|varchar(10)|○||||コンテンツ１の種別
|49|content_position1|varchar(2)|○||||コンテンツ１の位置
|50|txt_content1|text|○||||コンテンツ１のテキスト内容
|51|movie_type1|varchar(10)|○||||コンテンツ１の動画種別
|52|movie_code1|varchar(50)|○||||コンテンツ１の動画コード
|53|content_type2|varchar(10)|○||||コンテンツ２の種別
|54|content_position2|varchar(2)|○||||コンテンツ２の位置
|55|txt_content2|text|○||||コンテンツ２のテキスト内容
|56|movie_type2|varchar(10)|○||||コンテンツ２の動画種別
|57|movie_code2|varchar(50)|○||||コンテンツ２の動画コード
|58|cat_type_num|int(1)||1|||利用するカテゴリ種類数
|59|cat1_name|varchar(15)||カテゴリー|||カテゴリ１の表示名
|60|cat2_name|varchar(15)||エリア|||カテゴリ２（エリア）の表示名
|61|google_analytics|varchar(500)|○||||Google Analytics code
|62|display_user_birth_school|tinyint(1)||0|||
|63|display_user_birth_area|tinyint(1)||0|||

<a name="users"></a>
## users
##### ユーザ
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
|1|id|int(11)|||○||
|2|nick_name|varchar(100)|||||ニックネーム
|3|name|varchar(100)|○||||氏名
|4|email|varchar(255)|||||メールアドレス
|5|password|varchar(50)|||||パスワード
|6|sex|varchar(10)|○||||性別
|7|address|varchar(30)|○||||お住まい
|8|birthday|date|○||||生年月日
|9|birth_area|varchar(4)|○||||
|10|school|varchar(100)|○||||
|11|twitter_id|varchar(255)|○||||twitter ID
|12|tw_screen_name|varchar(100)|○||||
|13|facebook_id|varchar(255)|○||||Facebook ID
|14|self_description|text|○||||自己紹介
|15|url1|varchar(200)|○||||URL1
|16|url2|varchar(200)|○||||URL2
|17|url3|varchar(200)|○||||URL3
|18|receive_address|text|○||||リターン受け取り先住所
|19|created|datetime|○||||データ作成日時
|20|modified|datetime|○||||データ更新日時
|21|group_id|int(11)|○||||ユーザ権限
|22|active|tinyint(1)||1|||退会してないフラグ
|23|token|varchar(512)|○||||トークン
|24|login_try_count|int(2)||0|||ログイン試行回数
|25|stripe_customer_id|varchar(255)|○||||

