class Spree::Admin::InstagramSettingsController < Spree::Admin::BaseController
def index
end

def new
end
  def update
   settings = params[:enabled, :token, :number, :client_id]
   File.open("../solidus_instagram/lib/instagram.yml", "w") { |file| file.write(settings.to_yaml) }
  end
def show
load 'InstagramWorker.rb'
end
end
def button
          load 'InstagramWorker.rb'
end
