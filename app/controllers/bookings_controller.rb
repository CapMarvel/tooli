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

  end

  def new
    @booking = Booking.new
  end
end
