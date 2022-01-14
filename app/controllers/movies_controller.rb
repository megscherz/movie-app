class MoviesController < ApplicationController
  def movie_method
    movie = Movie.all
    render json: movie
  end

  def movie_method2
    movie = Movie.find(params[:id].to_i)
    render json: movie
  end
end
