Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chefs, only: [:index, :show] do
    resources :followers, only: [:create]
    resources :menus, only: [:index, :show]
    resources :posts, only: [:index]
  end
end
