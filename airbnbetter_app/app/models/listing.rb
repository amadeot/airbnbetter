class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  validates :neighborhood, :price, :address, presence: true
end