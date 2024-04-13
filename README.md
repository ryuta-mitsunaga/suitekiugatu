起動などはmakeコマンドを使用しています。  
実際にどのようなコマンドを実行しているのかを確認する場合は、  
`Makefile` を確認してください。  
※ ローカルマシンのOSに合わせてmakeコマンドを使用できるようにする必要があります。

# 初回実行時
```
make build
make up または make up-d
```

### 起動
make up

### 起動（バックグラウンド）
make up-d

### 終了
make down

### コンテナに入る
make exec-vue
make exec-rails
make exec-db
