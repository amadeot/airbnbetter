class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  validates :status, presence: true
end