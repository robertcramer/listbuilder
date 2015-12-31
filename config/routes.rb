Rails.application.routes.draw do
  resources :lists
  resources :lists
  resources :lists
  resources :lists
  devise_for :users

  root to: "lists#index"



end
