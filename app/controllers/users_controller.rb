class UsersController < ApplicationController
  def index
    users = User.all
    render  json: users.as_json
  end

  def show
    the_id = params[:the_id]
    user = User.find_by(id: the_id)
    render json: user.as_json
  end
end
