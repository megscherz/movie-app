Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actor/:id", controller: "actors", action: "actor_method"

  get "/movie/:id", controller: "movies", action: "movie_method"
end
