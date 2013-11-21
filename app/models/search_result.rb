class SearchResult < ActiveRecord::Base
  attr_accessible :brand, :description, :details, :price, :title, :url
end
