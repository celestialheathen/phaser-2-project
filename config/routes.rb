Rails.application.routes.draw do
  resources :carts
  resources :purchases
  resources :reviews
  resources :items
  resources :customers

  get "/login", to: "customers#login", as: "login"
  post "/handle_login", to: "customers#handle_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
