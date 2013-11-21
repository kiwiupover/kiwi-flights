class VanSerializer < ActiveModel::Serializer
  attributes  :id, 
              :beds, 
              :brand, 
              :description, 
              :details, 
              :image_url, 
              :name, 
              :rating, 
              :image_large, 
              :fridge, 
              :freezer, 
              :stove, 
              :dvd_player, 
              :microwave, 
              :shower, 
              :toilet
end
