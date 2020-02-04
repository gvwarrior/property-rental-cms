class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.string :bedrooms
      t.string :bathrooms
      t.string :sqft
      t.string :price
      t.text :description
      t.string :url
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end
