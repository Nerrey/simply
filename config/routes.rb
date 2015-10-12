Rails.application.routes.draw do
  devise_for :users
  resources :users

  get '/check_id' => 'users#check_id', as: :check_id
  get '/set_id' => 'users#set_id', as: :set_id
  root to: 'users#index'
  
end
