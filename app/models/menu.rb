class Menu < ApplicationRecord
  belongs_to :chef
  has_many :menu_likes
  has_many_attached :photos
end
