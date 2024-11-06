Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
  get "restaurants", to: "restaurants#index"
  get "restaurants/:id", to: "restaurants#show"
  get "/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id/edit", to: "restaurants#edit"
  resources :restaurants
end
