class MenuLikesController < ApplicationController
    def new
        @menu_like = MenuLike.new
    end

    def create
        @menu_like = MenuLike.new
        @menu = Menu.find(params[:chef_id])
        @menu_like.menu_id = @menu.id
        @menu_like.user_id = current_user.id
        @menu_like.save!
    end
end
