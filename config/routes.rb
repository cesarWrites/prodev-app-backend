Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lessons, only: [:index]
  resources :courses, only: [:show, :index] do
    resources :lessons, only: [:show, :index, :create]
  end
end
