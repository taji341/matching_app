# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :lessons
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
