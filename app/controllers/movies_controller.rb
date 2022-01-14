class MoviesController < ApplicationController
  def actor_method
    actor_id = params[:id].to_i
    actor = Actor.find_by(id: actor_id)
    render json: actor
  end

  def movie_method
    movie_id = params[:id].to_i
    movie = Movie.find_by(id: movie_id)
    render json: movie
  end
end
