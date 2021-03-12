
Rails.application.routes.draw do
  resources :articles
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :articles, only: [:new, :create, :show]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  root 'categories#index'
end
