Rails.application.routes.draw do
  resources "todos"
  post "/users/login", to: "users#login"
  resources "users"
end
