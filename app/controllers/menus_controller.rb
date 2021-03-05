class MenusController < ApplicationController

    def index
        @chef = Chef.find(params[:chef_id])
        @menus = Menu.all
    end

    def show
        @chef = Chef.find(params[:chef_id])
        @menu = Menu.find(params[:id])
    end

    private 

    def menu_params
        params.require(:article).permit(:title, :chefs_note, :price, :cuisine, photos: [])
    end
end
