class Tool < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :address, presence: true
end
