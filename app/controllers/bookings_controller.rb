class BookingsController < ApplicationController

    def index
        @bookings = Booking.all
        @restaurants = Restaurant.all
        chef = Chef.where(params[:id])
        @my_bookings = current_user.bookings
        # @my_pets_bookings = current_user.received_bookings
      end
    
    def new
        @booking = Booking.new
        @restaurant = Restaurant.find(params[:restaurant_id])
    end

    def create
      @booking = Booking.new(booking_params)
      @restaurant = Restaurant.find(params[:restaurant_id])
      @booking.user = current_user
      @booking.restaurant = @restaurant
      if @booking.save
        redirect_to dashboard_path
      else
        render :new
      end
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to bookings_path
      end
    
    private

    def booking_params
      params.require(:booking).permit(:start_date, :start_time, :status)
    end
end
