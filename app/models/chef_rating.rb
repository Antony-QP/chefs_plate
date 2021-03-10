class ChefRating < ApplicationRecord
  belongs_to :chef
  belongs_to :user
  validates :rating, inclusion: { in: 0..5 }

end
