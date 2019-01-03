Spree::Core::Engine.routes.draw do
    namespace :admin do
      get 'instagrams' => 'instagrams#index'
    end

    namespace :admin do
      resources :instagrams
  end
namespace :admin do
    get '/instagrams/button' => "instagrams#button"
  end

namespace :admin do
    patch '/instagrams' => "instagrams#update"
end
end
