class Post < ApplicationRecord
    belongs_to :chef
    has_many :post_likes
    has_one_attached :photo
end
