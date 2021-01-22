Rails.application.routes.draw do
  # root :to => redirect("/todos")
  get "/" => "home#index"
  resources :todos
  resources :users
  # post "users/login", to: "users#login"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
end
