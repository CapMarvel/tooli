class BookingsController < ApplicationController
  # We need to display all the bookings done on the tool details' page (INDEX)

  # view will be on the show tool page

  # Actions of the controller
  # Routes
  # Views


  def show
    @tool = Tool.find(params[:id])
    authorize @booking
    @tool.bookings
  end

  def new
    @tool = Tool.find(params[:tool_id])
    @booking = @tool.bookings.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @tool = Tool.find(params[:tool_id])
    @booking.tool_id = @tool.id
    authorize @booking
    if @booking.save
      redirect_to @tool, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :tool_id, :rental_end, :rental_start)
  end
end
