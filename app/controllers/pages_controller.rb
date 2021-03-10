class PagesController < ApplicationController
  def home
    @chefs = Chef.limit(4)
  end

  def dashboard
    @followers = Follower.all
    @menu_likes = MenuLike.all
    @bookings = Booking.all
  end
  
  def chefit
    @restaurants = Restaurant.near([current_user.latitude, current_user.longitude], 200)

    @top_chefs = Chef.where(restaurant: @restaurants.map(&:id)).select do |chef|
     chef.average_rating > 4
    end
    # using a select method iterator to only filter the chefs with average rating more than 4.
  end
end
