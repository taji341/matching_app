# frozen_string_literal: true

Rails.application.routes.draw do
  post 'home/guest_sign_in', to: 'home#guest_sign_in'
  devise_for :users
  resources :messages
  resources :users do
    get :favorites, on: :collection
  end
  resources :lessons do
    resource :favorites, only: [:create, :destroy]
  end
  root 'home#top'
end
