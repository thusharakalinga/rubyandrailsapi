class Apartment < ApplicationRecord
  validates :name, presence:true
  validates :description, presence:true
  validates :price, presence:true
  validates :location, presence:true
end
