class LocationSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :details, :img_url
  has_one :itinerary
end
