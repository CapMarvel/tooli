class BookingsController < ApplicationController
  # We need to display all the bookings done on the tool details' page (INDEX)

  # view will be on the show tool page

  # Actions of the controller
  # Routes
  # Views

  def show
    @tool = Tool.find(params[:id])
    @tool.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.tool_id = Tool.find(params[:id])
    @booking.save
    redirect_to @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :tool_id, :rental_end, :rental_start)
  end

  def new
    @booking = Booking.new
  end
end
