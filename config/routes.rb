Rails.application.routes.draw do
  resources :word_classes
  resources :books
  resources :pairs
  devise_for :users
  resources :users

  root to: 'users#index'
  
end
