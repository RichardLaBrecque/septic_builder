Rails.application.routes.draw do
  root :to => 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :properties
  resources :test_holes
  resources :users
  resources :technologies

  resources :test_holes, only: :create
  resources :layouts
end
