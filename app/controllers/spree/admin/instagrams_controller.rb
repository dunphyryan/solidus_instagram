class Spree::Admin::InstagramsController < ApplicationController
def index
end
def new
end

def create
   settings = params[:instagram_setting]
   File.open("instagram.yml", "w") { |file| file.write(settings.to_yaml) }
end

def show
load 'InstagramWorker.rb'
end

def button
          load 'InstagramWorker.rb'
end
end
