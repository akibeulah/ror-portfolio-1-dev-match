# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
    resource :post
    get 'followers' => 'users#followers'
    get 'following' => 'users#following'
  end

  mount Commontator::Engine => '/commontator'
  resource :follows, only: %i[create destroy]

  resources :posts do
    resources :likes
    resources :shares
    resources :dislikes
  end

  get '/c' => 'conversations#index'
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: %i[index show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts
  get '/plans' => 'pages#plan'
  get '/about' => 'pages#about'
  get '/s' => 'pages#search'
  root 'pages#home'
end
