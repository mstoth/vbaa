class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :group_id
      t.integer :venue_id
      t.integer :concert_id
      t.datetime :date_booked
      t.decimal :booked_fee

      t.timestamps
    end
  end
end
