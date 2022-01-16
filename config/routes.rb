Rails.application.routes.draw do
  # get "/movie", controller: "movies", action: "movie_method"

  # get "/movie/:id", controller: "movies", action: "movie_method2"

  get "/actor" => "actors#query"
  get "/actor/:id" => "actors#url_method"
  post "/actor/:id" => "actors#body_method"
end
