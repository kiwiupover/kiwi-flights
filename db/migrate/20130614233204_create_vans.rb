class CreateVans < ActiveRecord::Migration
  def change
    create_table :vans do |t|
      t.string :name
      t.string :description
      t.text :details
      t.string :image_url
      t.string :brand
      t.integer :beds
      t.string :rating

      t.timestamps
    end
  end
end
