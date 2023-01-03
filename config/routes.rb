Rails.application.routes.draw do
  get "/animes" => "animes#index"
  post "/animes" => "animes#create"
  get "/animes/:id" => "animes#show"
  patch "/animes/:id" => "animes#update"
  delete "/animes/:id" => "animes#destroy"

  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
end
