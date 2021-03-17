# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :articles, only: %i[new create show]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  get '/votearticle/:id', to: 'articles#vote_for_article', as: :votearticle
  get '/unvotearticle/:id', to: 'articles#unvote_for_article', as: :unvotearticle
  root 'categories#index'
end
