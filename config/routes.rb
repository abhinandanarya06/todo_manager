Rails.application.routes.draw do
  get "/", to: "home#index"
  resources "todos"
  post "/todos/:id", to: "todos#update"
  resources "users"
  get "/signin" => "sessions#new", as: :new_signin
  post "/signin" => "sessions#create", as: :signin
  delete "/signout" => "sessions#destroy", as: :destroy_session
end
