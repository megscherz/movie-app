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
    )
    render json: actor
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
    actor.save
    render json: actor
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: { message: "Your actor has been desimated." }
  end
end
