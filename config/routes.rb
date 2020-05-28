Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users do
    resource :profile
    get 'followers' => 'users#followers'
    get 'following' => 'users#following'
  end
  
  resource :follows, only: %i[create destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts
  get '/about' => 'pages#about'
  get '/plans' => 'pages#plan'
  root 'pages#home'
end

