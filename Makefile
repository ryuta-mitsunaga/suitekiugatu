# コンテナを立ち上げる
up:
	docker-compose up

# コンテナをバックグラウンド立ち上げ
up-d:
	docker-compose up -d
	
# コンテナ停止
down:
	docker-compose down
	
# コンテナ再起動
restart:
	docker-compose restart
	
# コンテナをビルド
build:
	docker-compose build --no-cache=true
	
# railsコンテナに入る
exec-rails:
	docker-compose exec -it web bash
	
# dbコンテナに入る
exec-db:
	docker-compose exec -it db bash
	
# vueコンテナに入る
exec-vue:
	docker-compose exec -it vue bash
