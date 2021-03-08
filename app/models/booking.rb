class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  # belongs_to :chef, through: :restaurant
end
