Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :products, only: [:index]
  resources :posts, only: [:index, :show, :create]
end
