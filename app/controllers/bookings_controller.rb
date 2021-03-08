class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
