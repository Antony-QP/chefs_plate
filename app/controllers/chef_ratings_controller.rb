class ChefRatingsController < ApplicationController
    def new
        @review = ChefRating.new
    end

    def create
        @chef_rating = ChefRating.new(chef_rating_params)
        @chef = Chef.find(params[:chef_id])
        @chef_rating.chef = @chef
        @chef_rating.user_id = current_user.id
        @chef_rating.save!
        redirect_to chef_path(@chef)
    end

    private

    def chef_rating_params
        params.require(:chef_rating).permit(:rating, :user_id, :chef_id)
    end
end
