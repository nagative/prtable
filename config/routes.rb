Rails.application.routes.draw do
  root 'companies#index'
  resources :companies, only: [:index]
  resources :stories, only: [:index, :show, :create]
  resources :tags, only: [:index, :show]
end
