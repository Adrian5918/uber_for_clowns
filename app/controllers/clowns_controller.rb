class ClownsController < ApplicationController
  def index
    clown = Clown.all
    render json: clown.as_json
  end

  def show
    the_id = params[:id]
    clown = Clown.find_by(id: the_id)
    render json: clown.as_json
  end

  def create
    clown = Clown.new(
      name: params[:name],
      shoe_size: params[:shoe_size],
      specialty: params[:specialty]
      )
      clown.save
        render json: clown.as_json
    end
  end