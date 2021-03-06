Rails.application.routes.draw do
  resources :subscribers
  get 'about/index'
  get 'contact/index'
  get 'home/index'
  get 'welcome/index'
  get '/search', to: 'posts#search'
  
  resources :tags
  resources :posts
  devise_for :users
  root to: 'home#index'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
