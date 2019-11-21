Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tools, except: :show
  resources :users, only: :show do
    resources :tools, only: :index
  end
  resources :tools, only: [:show] do
    resources :bookings, only: [:new, :create]
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :bookings, only: [:index, :show, :update, :destroy]
end
