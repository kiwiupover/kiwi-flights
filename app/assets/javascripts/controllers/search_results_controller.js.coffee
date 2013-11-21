App.SearchResultsController = Ember.ArrayController.extend
  content: []
  needs: ['searchNew', 'vans']

  searchNewController: Ember.computed.alias('controllers.searchNew')

  sortProperties: ['price']
  # sortAscending: false

  reset: (->
    @socket = io.connect(App.Host)
    @socket.on 'connection', (data) ->
      console.log(data)

    this.socket.on('quote', @onData.bind(this));
  ).on('init')
  
  actions:
    filter: ->
      debugger
    sendResults: ->
      locations = this.pickupDropOffLocations.split('-')
      @setProperties
        pickupLocation: locations[0]
        dropoffLocation: locations[1]
      
      @socket.emit('request quote'
        pickupDate: @startDate
        dropoffDate: @endDate
        pickupLocation: @get('pickupLocation')
        dropoffLocation: @get('dropoffLocation')
      )

  # filteredContent: (->
  #   # filter = @get('filterString')
  #   # @filterBy (results) ->
      
      
  # ).property '[]' 

  onData: (data) ->
    data = JSON.parse(data)
    if data.errors
      @handleErrors(data)
    else
      @handleResults(data)
    
  handleErrors: (data) ->
    alert data.errors

  handleResults: (data) ->
    data.results.forEach ((result) ->
      van = @get('controllers.vans').findProperty('name', result.vehicle_id)
      newResult = @store.createRecord 'searchResult' ,
        title: result.vehicle_id
        url: "http://google.com"
        vans: van
        price: result.price
      console.log newResult
      @.pushObject newResult
    ), this

  totalNumberOfDays: (->
    startDate = moment(@startDate)
    endDate = moment(@endDate)
    return endDate.diff( startDate, 'days' ) + ' days'
  ).property('startDate', 'endDate')
