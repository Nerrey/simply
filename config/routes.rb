Rails.application.routes.draw do
  resources :word_classes
  resources :books
  resources :pairs
  devise_for :users
  resources :users

  match '/api', :to => "pairs#add_pair", :as => :add_pair, via: [:get, :post]
  match '/about', :to => "pairs#about", :as => :about, via: [:get, :post]

  root to: 'users#index'
  
end
