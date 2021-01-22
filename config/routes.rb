Rails.application.routes.draw do
  # root :to => redirect("/todos")
  get "/" => "home#index"
  resources :todos
  resources :users
  # post "users/login", to: "users#login"
end
