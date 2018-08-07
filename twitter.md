[< TOP](/README.md)

# Twitterアプリ登録の流れ
2018年5月22日確認（twitterのアップデートで画面や方法が変更になる可能性があります）

### 1. twitterにログインします
まず、twitterにログインしておきます。

### 2. [https://apps.twitter.com/](https://apps.twitter.com/)にアクセスします。
### 3. 下記のような画面が表示されるので、Create New Appボタンをクリックします。
![twitter1](https://user-images.githubusercontent.com/28310715/40352620-4027d266-5dea-11e8-95e6-ce0f041f7ac4.png)
### 4. 下記のような画面が表示されるので、全項目を入力します。
- ~~Callback URLsは、WebsiteのURLと同じで構いません。~~
- Twitterのセキュリティ強化により上記では動作しなくなりました。Callback URLsは下記を入力していただく必要があります。
  - https://xxxxxx.com/tw_callback (xxxxxx.comは、貴社のドメインに置き換えてください)
- 入力が終わったら、Create your Twitter Applicationボタンをクリックします。
![twitter2](https://user-images.githubusercontent.com/28310715/40352651-5666a692-5dea-11e8-8dc0-d75b53029e9d.png)
### 5. 下記の画面が表示されます。
![twitter3](https://user-images.githubusercontent.com/28310715/40354041-eb2f99c0-5ded-11e8-9304-6e026ca3923d.png)
### 6. Settingsタブをクリックすると下記画面が表示されるので、下記を設定します。
- Enable Callback LockingというチェックボックスをOFFにします。
- Organization nameと、Organization websiteを入力します。
- 入力が終わったらUpdate Settingsボタンをクリックします。
![twitter4](https://user-images.githubusercontent.com/28310715/40354248-5c911788-5dee-11e8-94bd-77f36d20849b.png)
### 7. Keys and Access Tokensタグをクリックすると下記画面が表示されます。
- Access LevelがRead and writeになっていることを確認します。なっていない場合、modify app permissionsのリンクから設定を変更してください。
- Consumer Key (API Key)と、Consumer Secret (API Secret)が、Fundeeの管理画面に登録する内容になります。
![twitter5](https://user-images.githubusercontent.com/28310715/40354331-8908cb08-5dee-11e8-97d8-a957f411ab71.png)





