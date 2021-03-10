class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  # belongs_to :chef, through: :restaurant
  TIMES = %w(18.00 19.00 20.00 21.00 22.00)
  validates :start_time, inclusion: { in: TIMES }
end
