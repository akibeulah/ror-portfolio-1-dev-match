Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users do
    resources :profile, controller: 'profiles'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts
  get '/about' => 'pages#about'
  root 'pages#home'
end

