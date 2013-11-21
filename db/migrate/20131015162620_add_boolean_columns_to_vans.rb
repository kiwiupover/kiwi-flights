class AddBooleanColumnsToVans < ActiveRecord::Migration
  def change
    add_column :vans, :image_large, :string
    add_column :vans, :fridge, :boolean
    add_column :vans, :freezer, :boolean
    add_column :vans, :stove, :boolean
    add_column :vans, :dvd_player, :boolean
    add_column :vans, :microwave, :boolean
    add_column :vans, :shower, :boolean
    add_column :vans, :toilet, :boolean
  end
end
