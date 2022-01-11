class Booking < ApplicationRecord

  validates :booking_date, presence:true
  validates :booking_time, presence:true
  validates :appartment_id, presence:true
  validates :client_name, presence:true
  validates :client_email, presence:true
  validates :isbook, presence:true

end
