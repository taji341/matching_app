# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :messages
  resources :users do
    get :favorites, on: :collection
  end
  resources :lessons do
    resource :favorites, only: [:create, :destroy]
  end
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
