class ChefsController < ApplicationController

    def index
        @chefs = Chef.all
        @restaurants = Restaurant.all
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
    end
    
end
