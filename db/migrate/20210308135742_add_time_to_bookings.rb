class AddTimeToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :start_time, :string
  end
end
