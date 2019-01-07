require "sidekiq"
require "instagram"
$instagram_pictures=YAML.load(File.read("../solidus_instagram/lib/instagram.yml"))[3].to_i
$instagram_client_id=YAML.load(File.read("../solidus_instagram/lib/instagram.yml"))[1]
$instagram_token=YAML.load(File.read("../solidus_instagram/lib/instagram.yml"))[2]
$instagram_token_short = $instagram_token.slice(0..9)
Instagram.configure do |config|
  config.client_id = $instagram_client_id
  config.access_token = $instagram_token
end

