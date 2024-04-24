Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # 開発環境だけなら以下の設定でOK
    origins 'localhost:8080'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :delete, :options, :head],
      credentials: true
  end
end
