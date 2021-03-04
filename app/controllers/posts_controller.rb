class PostsController < ApplicationController

    def index
        @posts = Post.all
        @chef = Chef.find(params[:chef_id])
    end

    def create
        @post = Post.new(post_params)
    end

    private

    def post_params
        params.require(:post).permit(:description, :photo)
    end
end
