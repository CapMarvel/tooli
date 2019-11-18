class BookingsController < ApplicationController
  # We need to display all the bookings done on the tool details' page (INDEX)

  # view will be on the show tool page

  # Actions of the controller
  # Routes
  # Views

  def index
    @bookings.tool = @tool
  end
end
