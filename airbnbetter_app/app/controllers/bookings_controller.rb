class BookingsController < ApplicationController
  def new
    @listing = Listing.all
    @booking = Booking.new
  end

end