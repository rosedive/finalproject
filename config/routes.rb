Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'users#new'
  resources :relationships, only: [:create, :destroy]
  resources :sessions
  resources :order_books
  resources :users
  resources :books do 
    resources :comments

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
