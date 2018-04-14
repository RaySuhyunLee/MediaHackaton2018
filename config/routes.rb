Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"

  get 'index', to: 'home#index'
  get 'hot', to: 'home#hot'

  resources :posts
end

