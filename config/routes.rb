Rails.application.routes.draw do


  resources :lists do
    resources :items
  end
  devise_for :users

  root to: "lists#index"



end
