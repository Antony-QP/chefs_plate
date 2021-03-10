class AddRefsToPostLikes < ActiveRecord::Migration[6.0]
  def change
    add_reference :post_likes, :user, foreign_key: true
    add_reference :post_likes, :post, foreign_key: true
  end
end
