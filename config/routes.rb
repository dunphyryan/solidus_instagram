Spree::Core::Engine.routes.draw do
  namespace :spree do
    namespace :admin do
      get 'instagram_settings/index'
      get 'instagram_settings/new'
      get 'instagram_settings/button'
      get 'instagram_settings/update'
    end
  end
  namespace :spree do
    namespace :admin do
      get 'instagram_settings/index'
    end
  end
    namespace :admin do
      get 'instagram_settings' => 'instagram_settings#index'
    end
namespace :admin do
    get '/instagrams_setting/button' => "instagrams_setting#button"
  end

namespace :admin do
    patch '/instagrams_setting' => "instagrams_setting#update"
end
namespace :admin do
   get 'instagram_settings//update' => 'instagram_settings#update'
end
end
