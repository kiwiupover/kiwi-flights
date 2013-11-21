class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :pick_up_location
      t.string :drop_off_location

      t.timestamps
    end
  end
end
