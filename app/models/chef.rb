class Chef < ApplicationRecord
    belongs_to :restaurant
    has_many :posts
    has_many :menus
    has_many :followers
    has_many :chef_ratings
    has_many_attached :photos

def average_rating
    # calculating number of ratings
    sum = 0
    self.chef_ratings.each do |chef_rating|
      sum += chef_rating.rating
  end
    if self.chef_ratings.length > 0
      return (sum / self.chef_ratings.length).to_i
    else
      0
end

end
end
