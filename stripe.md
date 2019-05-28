# Stripeの設定（Webhookについて）

この設定はデラックス版のみ必要となります。
月額課金の毎月の決済結果をWebhookを通じて本システムに通知が来るようにします。

## Webhook URLの作成

### 設定するURL

設定するURLは下記のようになります。 `fundee-***********-************` という部分（Path）は、下記ファイル内に設定された値になります。独自の値に変更してください。

#### URL

```
https://***.com/stripe_webhook/fundee-***********-************
```

#### Path

下記ファイルの、 `STRIPE_WEBHOOK_PATH` で設定されています。

```
app/Config/const_order.php
```


### 受信するイベント

```
customer.subscription.deleted
customer.subscription.updated
invoice.payment_failed
invoice.payment_succeeded
```

## Webhook URLの署名シークレットと、URLをFUNDEEの管理画面に登録

- 上記のPathを設定後に、管理画面にアクセスして、「本番用Webhookエンドポイントの登録」というボタンをクリックすると、自動的にWebhook URLが登録されます。
- また、本番用・テスト環境用それぞれに、Webhook署名の登録欄がありますので、Stripeのダッシュボードで確認して、登録してください。

