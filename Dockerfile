# Rubyのイメージをベースにする
FROM ruby:3.2.2

# Node.jsとYarnのインストール

# Node.jsとYarnのインストール
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get update -qq && \
    apt-get install -y nodejs && \
    npm install -g yarn

# ワーキングディレクトリを設定
WORKDIR /app

# RailsのGemfileとGemfile.lockをコピー
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock

# BundlerでGemをインストール
RUN bundle install

# ワーキングディレクトリを再設定
WORKDIR /app

# コンテナ起動時に実行されるコマンド（オプション）
CMD ["rails", "server", "-b", "0.0.0.0"]
