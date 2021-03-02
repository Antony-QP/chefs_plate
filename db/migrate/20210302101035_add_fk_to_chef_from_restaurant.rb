class AddFkToChefFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_reference :chefs, :restaurant, foreign_key: true
  end
end
