Rails.application.routes.draw do
  root "destinations#index"

  get "/destinations", to: "destinations#index", as: "destinations"
  get "/destinations/new", to:"destinations#new", as: "new_destination"
  post"/destinations", to:"destinations#create"
  get "/destinations/:id", to: "destinations#show", as: "destination"
  get "/destinations/:id/edit", to: "destinations#edit", as: "edit_destination"
  patch "/destinations/:id", to: "destinations#update"
  delete "/destinations/:id", to: "destinations#destroy"
end
