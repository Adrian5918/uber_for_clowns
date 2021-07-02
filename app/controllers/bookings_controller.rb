class BookingsController < ApplicationController
  def index
    booking = Booking.all
    render json: booking.as_json
  end

  def show
    the_id = params[:id]
    booking = Booking.find_by(id: the_id)
    render json: booking.as_json
  end
end
