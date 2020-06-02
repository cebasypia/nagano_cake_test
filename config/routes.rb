# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_scope :admin do
    get 'admins/home' => 'admins/home#index', as: 'admins_home'
  end
  devise_for :users
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
