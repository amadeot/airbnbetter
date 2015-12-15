class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :listing
      t.string :status, default: "pending"
    end
  end
end
