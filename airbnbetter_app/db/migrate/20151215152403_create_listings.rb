class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :img_url
      t.string :address
      t.string :neighborhood
      t.integer :price
      t.text :description
      t.references :user
    end
  end
end
