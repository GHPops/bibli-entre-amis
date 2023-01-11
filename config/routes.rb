Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :livres do
    resources :reservations, only: [:index, :show, :create, :new]
  end

  resources :livres, only: [:destroy]
  resources :reservations, only: [:destroy]
end
