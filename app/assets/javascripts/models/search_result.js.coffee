App.SearchResult = DS.Model.extend
  price: DS.attr 'string'
  url: DS.attr 'string'
  vans: DS.belongsTo 'van'

# App.SearchResult.FIXTURES = [
#   id: 1
#   price: 22400
#   url: "http://google.com"
#   vans: [1]
# ,
#   id: 2
#   price: 32200
#   url: "http://google.com"
#   vans: [2]
# ,
#   id: 3
#   price: 19600
#   url: "http://google.com"
#   vans: [3]
# ]
