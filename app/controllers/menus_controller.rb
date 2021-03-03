class MenusController < ApplicationController

    def index
        @menus = Menu.all
    end

    def show
        @menu = Menu.find(params[:id])
    end

    private 

    def menu_params
        params.require(:article).permit(:title, :chefs_note, :price, :cuisine, photos: [])
    end
end
