class Tool < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
