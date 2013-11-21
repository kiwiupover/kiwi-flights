class Van < ActiveRecord::Base
  attr_accessible :id, 
                  :beds, 
                  :brand, 
                  :description, 
                  :details, 
                  :image_url, 
                  :name, 
                  :rating, 
                  :url, 
                  :image_large, 
                  :fridge, 
                  :freezer, 
                  :stove, 
                  :dvd_player, 
                  :microwave, 
                  :shower, 
                  :toilet
end
