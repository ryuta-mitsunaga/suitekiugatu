起動などはmakeコマンドを使用しています。  
実際にどのようなコマンドを実行しているのかを確認する場合は、  
`Makefile` を確認してください。  
※ ローカルマシンのOSに合わせてmakeコマンドを使用できるようにする必要があります。

# 初回実行時
```
cd suitekiugatu
make build
make up

しばらく待つ

vue-1  |   App running at:
vue-1  |   - Local:   http://localhost:8080/ 
vue-1  |   - Network: http://172.23.0.4:8080/
vue-1  | 
vue-1  |   Note that the development build is not optimized.
vue-1  |   To create a production build, run yarn build.
vue-1  | 

上記のログが出たら http://localhost:8080/ にアクセス
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
