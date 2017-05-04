Lita.configure do |config|
  config.redis[:host] = ENV.fetch 'REDIS_HOST', '127.0.0.1'
end
