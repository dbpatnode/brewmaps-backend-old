Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create, :index]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
  resources :notes
  resources :favorites
  resources :breweries
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post "/login", to: "users#login"
end
