Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/show'
  get 'home/new'
  get 'articles/index'
  get 'articles/new'
  root to: 'home#index'
  #root to: 'articles#index'
  resources :articles
  resources :users, only: [:edit, :update]
end
