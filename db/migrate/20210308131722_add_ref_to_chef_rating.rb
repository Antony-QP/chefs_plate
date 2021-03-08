class AddRefToChefRating < ActiveRecord::Migration[6.0]
  def change
    add_reference :chef_ratings, :chef, foreign_key: true
    add_reference :chef_ratings, :user, foreign_key: true
  end
end
