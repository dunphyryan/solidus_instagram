Spree::Core::Engine.routes.draw do
namespace :admin do
   resources:instagram_settings
   end

  namespace :admin  do
    get '/instagram' => "general_settings#instagram"
  end

  namespace :admin do
    get '/instagram_settings/button' => "instagram_settings#button"
  end
  namespace :admin do
    get '/instagram_settings' => "instagram_settings#index"
  end
  namespace :admin do
    patch '/instagram_settings' => "instagram_settings#update"
  end
end
