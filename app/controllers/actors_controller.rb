class ActorsController < ApplicationController
  # def query
  #   actor_id = params[:id]
  #   actor = Actor.find_by(id: actor_id)
  #   render json: actor
  # end

  # def url_method
  #   actor_id = params[:id].to_i
  #   actor = Actor.find_by(id: actor_id)
  #   render json: actor
  # end

  # def body_method
  #   actor_id = params[:id].to_i
  #   actor = Actor.find_by(id: actor_id)
  #   render json: actor
  # end

  def index
    actor = Actor.all
    render json: actor
  end

  def create
    actor = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age],
    )
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.save
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: { message: "Your actor has been desimated." }
  end
end
