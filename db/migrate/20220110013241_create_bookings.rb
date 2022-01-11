class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :booking_date
      t.string :booking_time
      t.string :appartment_id
      t.string :client_name
      t.string :client_email
      t.string :isbook

      t.timestamps
    end
  end
end
