class BookingPolicy < ApplicationPolicy
  def new

  end

  def create?
    record.tool.user != user
  end

  def show?
    record.user == user
  end
end
