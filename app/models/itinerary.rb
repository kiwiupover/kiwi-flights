class Itinerary < ActiveRecord::Base
  has_many :locations
  attr_accessible :description, :img_url, :title, :slug
end
