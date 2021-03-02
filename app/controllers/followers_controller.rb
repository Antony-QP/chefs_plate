class FollowersController < ApplicationController

    def create
      @follower = Follower.new(params[:id])
      @chef = Chef.find(params[:chef_id])
      @follower.user = current_user
      @follower.chef = @chef
      @follower.save
      redirect_to chefs_path
    end
end
