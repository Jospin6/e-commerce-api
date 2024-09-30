Rails.application.routes.draw do
  resources :credits
  resources :compte_clients
  resources :clients
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
