# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users do
    resource :profile
    resource :post
    get 'followers' => 'users#followers'
    get 'following' => 'users#following'
  end
  
  resource :follows, only: %i[create destroy]

  resources :posts do
    resources :likes
    resources :shares
    resources :dislikes
  end

  mount Commontator::Engine => '/commontator'
  mount ActionCable.server => '/cable'


  get '/c' => 'conversations#index'
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: %i[index show]

  resources :contacts
  get '/plans' => 'pages#plan'
  get '/about' => 'pages#about'
  get '/s' => 'pages#search'
  root 'pages#home'
end
