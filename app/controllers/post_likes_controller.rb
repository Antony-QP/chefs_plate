class PostLikesController < ApplicationController
    def new
        @post_like = PostLike.new
    end

    def create
        @post = Post.find(params[:chef_id])
        @post_like = PostLike.new
        @post_like.post_id = @post.id
        @post_like.user_id = current_user.id
        @post_like.save!
        redirect_to chef_posts_path(@post_like.post.chef)
    end
end
