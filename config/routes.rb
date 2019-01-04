Spree::Core::Engine.routes.draw do
  namespace :spree do
    namespace :admin do
      get 'instagram_setting/index'
    end
  end
    namespace :admin do
      get 'instagrams_setting' => 'instagrams_setting#index'
    end

     namespace :admin do
      resources :instagrams
  end
namespace :admin do
    get '/instagrams_setting/button' => "instagrams_setting#button"
  end

namespace :admin do
    patch '/instagrams_setting' => "instagrams_setting#update"
end
namespace :admin do
   get '/instagrams_setting/new' => 'instagrams_setting#new'
      resources :token
      resources :client_id
      resources :enable
      resources :number
end
end
