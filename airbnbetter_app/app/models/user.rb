class User < ActiveRecord::Base
  has_many :listings
  validates :email, uniqueness: true, presence: true
end