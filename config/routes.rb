Rails.application.routes.draw do
  resources "todos"
  post "/todos/:id", to: "todos#update"
  post "/users/login", to: "users#login"
  resources "users"
end
