class FollowersController < ApplicationController

    def index
      @followers = Follower.all
    end

    def new
      @follower = Follower.new
    end

    def create
      @follower = Follower.new(params[:id])
      @chef = Chef.find(params[:chef_id])
      @follower.user = current_user
      @follower.chef = @chef
      @follower.save
    end
end
