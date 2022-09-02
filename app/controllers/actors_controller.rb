class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor.as_json
  end
  def show
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end
end
