class Listing < ActiveRecord::Base
  belongs_to :user
  validates :neighborhood, :price, :address, presence: true
end