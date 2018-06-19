Rails.application.routes.draw do
  root 'companies#index'
  resources :companies, only: [:index]
  resources :tags, only: [:index, :show]
end
