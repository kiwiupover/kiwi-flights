class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.string :price
      t.string :title
      t.string :brand
      t.string :description
      t.string :details
      t.string :url

      t.timestamps
    end
  end
end
