class Chef < ApplicationRecord
    belongs_to :restaurant
    has_many :posts
    has_many :menus
    has_many :followers
    has_many_attached :photos
end
