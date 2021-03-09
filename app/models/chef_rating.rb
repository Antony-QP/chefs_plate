class ChefRating < ApplicationRecord
  belongs_to :chef
  belongs_to :user
  validates :rating, inclusion: { in: 0..5 }


  def average_rating
    # calculating number of ratings
    nb_rating_per_chef = ChefRating.where(chef_id: self.chef_id)
    sum = 0
    nb_rating_per_chef.each do |chef_rating|
      sum += chef_rating.rating
    end
    (sum / nb_rating_per_chef.length).to_i
  end


end
