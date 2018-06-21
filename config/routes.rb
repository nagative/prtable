Rails.application.routes.draw do
  root 'companies#index'
  get   'tags/:id'   =>  'tags#show'
  resources :companies, only: [:index]
  resources :stories, only: [:index, :show, :create] do
  resources :tags, only: [:index, :show]
  end
end
