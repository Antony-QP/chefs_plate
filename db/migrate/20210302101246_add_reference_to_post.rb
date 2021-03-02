class AddReferenceToPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :chef, foreign_key: true
  end
end
