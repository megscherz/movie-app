Rails.application.routes.draw do
  # get "/actor" => "actors#query"
  # get "/actor/:id" => "actors#url_method"
  # post "/actor/:id" => "actors#body_method"

  get "/movie" => "movies#index"
  post "/movie" => "movies#create"
  get "/movie/:id" => "movies#show"
  patch "/movie/:id" => "movies#update"
  delete "/movie/:id" => "movies#destroy"

  get "/actor" => "actors#index"
  post "/actor" => "actors#create"
  get "/actor/:id" => "actors#show"
  patch "/actor/:id" => "actors#update"
  delete "/actor/:id" => "actors#destroy"
end
