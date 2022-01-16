class ActorsController < ApplicationController
  def query
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    render json: actor
  end

  def url_method
    actor_id = params[:id].to_i
    actor = Actor.find_by(id: actor_id)
    render json: actor
  end

  def body_method
    actor_id = params[:id].to_i
    actor = Actor.find_by(id: actor_id)
    render json: actor
  end
end
