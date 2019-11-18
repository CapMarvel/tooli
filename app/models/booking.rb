class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user

  validates :rental_start, presence: true
  validates :rental_end, presence: true
end
