class Tool < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
