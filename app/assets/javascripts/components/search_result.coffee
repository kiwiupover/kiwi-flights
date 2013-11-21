App.SearchResultComponent = Ember.Component.extend
  tagName: 'li'
  classNames: ['result']

  showDetail: false

  buttonText: (->
    buttonText = if @get('showDetail') then "Hide Details" else "Show Details"
  ).property('showDetail')

  actions:
    toggleShowDetails: ->
      @toggleProperty('showDetail')

      component = this
      
      Ember.run.next ->
        component.$('.van-details').addClass('pullDown')
        component.loadImg( component.$('.van-details .photo img') )

  loadImg: (image) ->
    dataImage = image.data('original')
    image.prop('src', dataImage)







