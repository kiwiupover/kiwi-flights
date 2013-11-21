class Location < ActiveRecord::Base
  belongs_to :itinerary
  attr_accessible :details, :img_url, :name, :itinerary_id
end
