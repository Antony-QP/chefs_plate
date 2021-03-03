class Post < ApplicationRecord
    belongs_to :chef
    has_one_attached :photo
end
