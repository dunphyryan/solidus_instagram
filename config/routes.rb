Spree::Core::Engine.routes.draw do
    namespace :admin do
      get 'instagrams' => 'instagrams#index'
    end

    namespace :admin do
      resources :instagrams
  end
end
