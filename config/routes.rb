Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #show users index
  get "/users", controller: "users", action: "index"
  #show clowns index
  get "/clowns", controller: "clowns", action: "index"

  get "/users/:id", controller: "users", action: "show"

  get "/clowns/:id", controller: "clowns", action: "show"
end
