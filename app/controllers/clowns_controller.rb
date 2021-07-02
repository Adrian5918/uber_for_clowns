class ClownsController < ApplicationController
  def index
    clown = Clown.all
    render json: clown.as_json
  end

  def show
    the_id = params[:the_id]
    clown = Clown.find_by(id: the_id)
    render json: clown.as_json
  end
end
