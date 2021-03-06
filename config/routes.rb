Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'chefit', to: 'pages#chefit', as: 'chefit'
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  patch 'user_coords', to: 'users#update'

  resources :chefs, only: [:index, :show] do
    resources :menus, only: [:index ]
    resources :posts, only: [:index]
    resources :post_likes, only: [:new, :create]
    resources :followers, only: [:new, :create]
    resources :chef_ratings, only: [:new, :create]
    resources :menu_likes, only: [:new, :create]
  end

  resources :restaurants do
    resources :bookings, only: [:new, :create]
  end

  resources :menus, only: [:show]
  resources :followers, only: [:index, :destroy]
  resources :bookings, only: [:index, :new, :create, :destroy]
end
