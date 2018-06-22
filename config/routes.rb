Rails.application.routes.draw do
  devise_for :users
  root 'companies#index'
  resources :companies, only: [:index]
  resources :stories, only: [:index, :new, :create]
end
