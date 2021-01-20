Rails.application.routes.draw do
  root :to => "todos#index"
  resources :todos
  resources :users
  post "users/login", to: "users#login"
end
