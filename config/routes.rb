Rails.application.routes.draw do
  resources :posts

  root to: 'posts#index'
#  root to: 'visitors#index'
  devise_for :users
end
