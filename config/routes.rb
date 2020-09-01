Rails.application.routes.draw do
  devise_for :users
  # get 'home/index'
  # get 'home/show'
  # get 'home/new'
  root to: 'items#index'
  resources :articles
  resources :users, only: [:edit, :update]
  resources :items do
    resources :purchases, only:[:index, :create]
  end
end
