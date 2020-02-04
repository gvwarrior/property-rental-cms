class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phoneNumber
      t.string :address
      t.string :logoUrl
      t.timestamps
    end
  end
end
