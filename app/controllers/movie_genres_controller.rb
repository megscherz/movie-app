class MovieGenresController < ApplicationController
  def create
    movie = MovieGenre.create(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id],
    )
    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
