class ActorsController < ApplicationController
  def index
    actors = Actor.all.order(age: :desc)
    render json: actors
  end

  def create
    actors = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    if actors.save
      render json: actors
    else
      render json: { errors: actors.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    actors = Actor.find(params[:id])
    render json: actors
  end

  def update
    actors = Actor.find(params[:id])
    actors.first_name = params[:first_name] || actors.first_name
    actors.last_name = params[:last_name] || actors.last_name
    actors.known_for = params[:known_for] || actors.known_for
    actors.gender = params[:gender] || actors.gender
    actors.age = params[:age] || actors.age
    actors.save
    if actors.save
      render json: actors
    else
      render json: { errors: actors.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    actors = Actor.find(params[:id])
    actors.destroy
    render json: { message: "Your actor has been desimated." }
  end
end
