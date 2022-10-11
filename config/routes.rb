# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/mypage'
  devise_for :users
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
