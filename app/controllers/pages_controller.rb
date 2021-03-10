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
    @top_chefs = ChefRating.select { |chef| chef.average_rating > 4}
    # using a select method iterator to only filter the chefs with average rating more than 4.
  end
end
