class ChefRatingsController < ApplicationController
    def new
        @review = ChefRating.new
    end
end
