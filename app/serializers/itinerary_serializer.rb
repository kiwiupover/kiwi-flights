class ItinerarySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description, :img_url, :slug
  has_many :locations

  def slug
    self.title.downcase.gsub(' ', '-')
  end
end
