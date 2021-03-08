class AddIntToChefRating < ActiveRecord::Migration[6.0]
  def change
    add_column :chef_ratings, :rating, :integer
  end
end
