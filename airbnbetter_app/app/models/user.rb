class User < ActiveRecord::Base
  has_many :listings
  validates :username, uniqueness: true, presence: true
  has_secure_password
end