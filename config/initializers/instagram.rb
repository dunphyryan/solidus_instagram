require "sidekiq"
require "instagram"
$instagram_pictures=YAML.load(File.read("instagram.yml"))["number"].to_i
$instagram_client_id=YAML.load(File.read("instagram.yml"))["client_id"].to_s
$instagram_token=YAML.load(File.read("instagram.yml"))["token"].to_s
$instagram_token_short = $instagram_token.slice(0..9)
Instagram.configure do |config|
  config.client_id = $instagram_client_id
  config.access_token = $instagram_token
end

