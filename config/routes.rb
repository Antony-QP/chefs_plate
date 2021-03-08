Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs, only: [:index, :show] do
    resources :menus, only: [:index ]
    resources :posts, only: [:index]
    resources :followers, only: [:new, :create]
  end
  
  resources :restaurants do
    resources :bookings, only: [:new, :create]
  end

  resources :menus, only: [:show]
  resources :followers, only: [:index, :destroy]
  resources :bookings, only: [:index, :new, :create]
end
