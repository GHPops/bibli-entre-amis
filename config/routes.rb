Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :livres, only: %i[index new show create] do
    resources :reservations, only: %i[index new show create]
  end

  resources :livres, only: [:destroy]
  resources :reservations, only: [:destroy]
end
