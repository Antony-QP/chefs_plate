class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :inspiration
      t.text :work_history
      t.text :mission

      t.timestamps
    end
  end
end
