class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :check_in_date
      t.date :check_out_date
      t.references :user, null: false, foreign_key: true
      t.references :castle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
