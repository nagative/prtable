Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: [:index]
  resources :stories, only: [:index, :new, :create] do
    resources :tags, only: [:index, :show]
  end
end
