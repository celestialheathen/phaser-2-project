Rails.application.routes.draw do

  resources :carts

  get "/purchases", to: "purchases#index", as: "purchases"
  get "/purchases/:id", to: "purchases#show", as: "purchase"
  delete "/purchases", to: "purchases#destroy"

  resources :purchases
  resources :reviews
  resources :items
  resources :customers

  get "/login", to: "customers#login", as: "login"
  post "/handle_login", to: "customers#handle_login"
  post "/add_to_cart", to: "carts#add_to_cart", as: "add_to_cart"
  delete "/logout", to: "customers#logout", as: "logout"
  


  # post "/purchases", to: "purchases#add_to_cart"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
