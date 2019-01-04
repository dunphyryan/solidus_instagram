class Spree::Admin::InstagramsSettingController < Spree::Admin::BaseController
def index
end

def new
@instagram = Instagram.all
end
  def create
   @instagram = Instagram.new
   settings = params[:instagrams_setting]
   File.open("instagram.yml", "w") { |file| file.write(settings.to_yaml) }
  end
def show
load 'InstagramWorker.rb'
end
def update
 if InstagramsSetting.new(params[:instagram]).save
            redirect_to "http://192.168.1.128:3000/admin/instagram_settings", alert: "Success!"
            else
            redirect_to new_user_path, alert: "Crap! Failure!"
            end
end
def button
          load 'InstagramWorker.rb'
end
end
