# Checks to see if url matches last downloaded picture and downloads new picture if it is different.
instagram_token_short = $instagram_token.slice(0..9)
x = 0
instagram_pictures = YAML.load(File.read("../solidus_instagram/lib/instagram.yml"))["number"].to_i
while x < instagram_pictures do
    next if Instagram.user_recent_media(instagram_token_short, {:count => instagram_pictures})[x]["images"].nil?
    instagram = Instagram.user_recent_media(instagram_token_short, {:count => instagram_pictures})[x]["images"]["standard_resolution"]["url"]
    File.open("../solidus_instagram/lib/instagram-urls.yml", "ab") { |file| file.write(instagram.to_yaml)}
    download = open(instagram)
    IO.copy_stream(download, "app/assets/images/instagram#{x}.jpg")
x += 1
end
x = 0
first = Instagram.user_recent_media(instagram_token_short, {:count => instagram_pictures})[0]["caption"]["text"]
captionText = Hash['0', first]
File.open("captions.yml", "w") { |file| file.write(captionText.to_yaml)}
while x < instagram_pictures do
if Instagram.user_recent_media(instagram_token_short, {:count => instagram_pictures})[x]["caption"].nil?
captionText = " "
File.open("captions.yml", "ab") { |file| file.write(captionText.to_yaml)}
else
captionText = [Instagram.user_recent_media(instagram_token_short, {:count => instagram_pictures})[x]["caption"]["text"]]
File.open("captions.yml", "ab") { |file| file.write(captionText.to_yaml)}
end
    x += 1
    end

