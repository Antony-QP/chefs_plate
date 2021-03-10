class AddRegToMenuLikeFromUserAndMenu < ActiveRecord::Migration[6.0]
  def change
    add_reference :menu_likes, :user, foreign_key: true
    add_reference :menu_likes, :menu, foreign_key: true
  end
end
