# for more details see: http://emberjs.com/guides/models/defining-models/

App.Itinerary = DS.Model.extend
  title: DS.attr 'string'
  description: DS.attr 'string'
  imgUrl: DS.attr 'string'
  slug: DS.attr 'string'
  locations: DS.hasMany('location')
