class AddReviewedToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :reviewed, :boolean, default: false
  end
end
