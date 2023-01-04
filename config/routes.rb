Rails.application.routes.draw do

  # Animes
  get "/animes" => "animes#index"
  post "/animes" => "animes#create"
  get "/animes/:id" => "animes#show"
  patch "/animes/:id" => "animes#update"
  delete "/animes/:id" => "animes#destroy"

  # Sessions
  post "/sessions" => "sessions#create"
  
  # Users
  post "/users" => "users#create"

  # Favorites
  
end
