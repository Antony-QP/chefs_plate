class CreateMenuLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_likes do |t|

      t.timestamps
    end
  end
end
