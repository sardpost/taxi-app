Rails.application.routes.draw do
  resources :posts
  resources :contacts, only: [:new, :create]

  root to: 'posts#index'
#  root to: 'visitors#index'
  devise_for :users
end
