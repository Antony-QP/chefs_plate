class Restaurant < ApplicationRecord
    has_many :chefs
    has_many :bookings
    geocoded_by :location
    after_validation :geocode, if: :will_save_change_to_location?

    def main_chef
        chefs.first
    end
    
end
