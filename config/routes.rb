Rails.application.routes.draw do
  get "/", to: redirect("/todos")
  resources :todos
  resources :users
  post "users/login", to: "users#login"
end
