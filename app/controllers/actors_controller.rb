class ActorsController < ApplicationController
  def actor_method
    actor_id = params[:id].to_i
    actor = Actor.find_by(id: actor_id)
    render json: actor
  end
end
