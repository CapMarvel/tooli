Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tools, only: [:show] do
    resources :bookings, only: [:new, :create]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :bookings, only: [:index, :show, :update, :destroy]
  resources :tools
