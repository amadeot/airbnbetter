# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "admin", password: "test", password_confirmation: "test")

l1 = Listing.create(address: "555", neighborhood: "hells kitchen", price: 4, user_id: u1.id)

b1 = Booking.create(user_id: u1.id, listing_id: l1.id)