class MoviesController < ApplicationController
  def index
    movies = Movie.where(english: true)
    render json: movies
  end

  def create
    movies = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
    )
    if movies.save
      render json: movie
    else
      render json: { errors: movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    movies = Movie.find(params[:id])
    render json: movies
  end

  def update
    movies = Movie.find(params[:id])
    movies.title = params[:title] || movies.title
    movies.year = params[:year] || movies.year
    movies.plot = params[:plot] || movies.plot
    movies.director = params[:director] || movies.director
    movies.english = params[:english] || movies.english
    movies.save
    if movies.save
      render json: movies
    else
      render json: { errors: movies.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    movies = Movie.find(params[:id])
    movies.destroy
    render json: { message: "Your movie has been desimated." }
  end
end
