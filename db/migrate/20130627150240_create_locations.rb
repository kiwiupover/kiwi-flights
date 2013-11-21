class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :details
      t.string :img_url
      t.references :itinerary

      t.timestamps
    end
    add_index :locations, :itinerary_id
  end
end
