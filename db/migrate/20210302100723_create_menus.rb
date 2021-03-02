class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.text :chefs_note
      t.integer :price
      t.string :cuisine
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
