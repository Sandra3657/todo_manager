Rails.application.routes.draw do
  root :to => redirect("/todos")
  resources :todos
  resources :users
  post "users/login", to: "users#login"
end
