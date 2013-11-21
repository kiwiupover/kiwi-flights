class SearchResultSerializer < ActiveModel::Serializer
  attributes :id, :price, :title, :brand, :description, :details, :url
end
