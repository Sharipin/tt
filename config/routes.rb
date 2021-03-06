# -*- encoding : utf-8 -*-
Helloworld::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  root to: "pages#index"

  get '/signup',  to: 'users#new'
  get '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end
