require "dotenv"
require "byebug"
require "./lib/beeswaxapi"

Dotenv.load(".env.development")

BeeswaxAPI::App.configure do |config|
  config.user_name = ENV["BEESWAX_USERNAME"]
  config.password = ENV["BEESWAX_PASSWORD"]
  config.base_uri = ENV["BEESWAX_API_URL"]
  config.logger = Logger.new($stdout)
  config.cookie_file = "tmp/cookie.txt"
end
