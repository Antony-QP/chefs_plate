class CreateChefRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :chef_ratings do |t|
      t.timestamps
    end
  end
end
