Rails.application.routes.draw do
  resources :lists
  devise_for :users

  root to: "lists#index"

  resources :lists
  resources :items
  resources :users

end
