Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :lessons, only: [:index]
  resources :courses, only: [:show] do
    resources :items, only: [:show, :index, :create]
  end
end
