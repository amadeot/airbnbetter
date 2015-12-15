# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(username: "admin", password: "test", password_confirmation: "test", first_name: "Ad", last_name: "Min", location: "Adminica", bio: "All hail Ad Min, the admin of Adminica", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/3/000/100/21c/2fcecd2.jpg")

l1 = Listing.create(address: "555", neighborhood: "hells kitchen", price: 4, user_id: u1.id)

b1 = Booking.create(user_id: u1.id, listing_id: l1.id)