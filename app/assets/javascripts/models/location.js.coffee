# for more details see: http://emberjs.com/guides/models/defining-models/

App.Location = DS.Model.extend
  name: DS.attr 'string'
  details: DS.attr 'string'
  imgUrl: DS.attr 'string'
  itinerary: DS.belongsTo 'itinerary'

  imageUrl: (->
    if @get("imgUrl")
      if @get("imgUrl").indexOf("filepicker") >= 0
        @get("imgUrl")

      # host = @get('store.adapter.url')
      # host + @get("imgUrl")
      @get("imgUrl")

  ).property('imgUrl')

