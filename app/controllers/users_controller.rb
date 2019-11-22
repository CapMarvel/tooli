class UsersController < ApplicationController
  # Authentication / Devise for sign in, sign up
  # Show the profile of the user (password, address, email)
  # All routes, except index (because we do not need to display all users)

  def show
    @user_tools = current_user.tools
    @user_bookings = Booking.where(user: current_user)
    authorize(current_user)
  end
end
