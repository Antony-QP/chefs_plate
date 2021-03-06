class ChefsController < ApplicationController

    def index
      # SI on a une search, on veut filtrer les resultats avec ce que l'utilisateur a demande. L'utilisateur demande un params, en l'occurence location. SQL query renvoie moi tous les chefs avec cette query.
      # Si pas de query, display l'index.
      if params[:location].present? 
        # query = "%#{params["location"]}%"
        @restaurants = Restaurant.near(params[:location])
        @chefs = Chef.where(restaurant: @restaurants.map(&:id))
      else
        @chefs = Chef.all
        @restaurants = Restaurant.all
      end
      @markers = @restaurants.geocoded.map do |restaurant|
          {
            lat: restaurant.latitude,
            lng: restaurant.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
            image_url: helpers.asset_url('chef-icon.png')
          }
      end
    end

    def show
        @chef = Chef.find(params[:id])
        @chef_rating = ChefRating.new(params[:chef_id])
        @chef_ratings = ChefRating.where("chef_id == #{@chef}")
    end
end

