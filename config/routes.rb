Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs, only: [:index, :show] do
    resources :menus, only: [:index, :show]
    resources :posts, only: [:index]
    resources :followers, only: [:new, :create]
  end
  resources :followers, only: [:index, :destroy]
end
