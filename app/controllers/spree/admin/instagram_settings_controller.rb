class Spree::Admin::InstagramSettingsController < Spree::Admin::BaseController
def index
end

def new
end
  def update
   enabled = params[:enabled]
   client_id = params[:client_id]
   token = params[:token]
   number = params[:number]
   instagram_settings = [enabled, client_id, token, number]
   File.open("../solidus_instagram/lib/instagram.yml", "w") { |file| file.write(instagram_settings.to_yaml) }
  end
def show
load 'InstagramWorker.rb'
end
end
def button
          load 'InstagramWorker.rb'
end
