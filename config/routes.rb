Rails.application.routes.draw do
  devise_for :users, path: 'account'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :reservations, only: %i[index]
  end

  resources :livres do
    resources :reservations, only: [:show, :create, :new]
  end

  resources :livres, only: [:destroy]
  resources :reservations, only: [:destroy]
end
