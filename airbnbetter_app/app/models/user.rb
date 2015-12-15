class User < ActiveRecord::Base
	has_secure_password
  has_many :listings
  validates :email, uniqueness: true, presence: true
end