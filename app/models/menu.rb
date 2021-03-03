class Menu < ApplicationRecord
  belongs_to :chef
  has_many_attached :photos
end
