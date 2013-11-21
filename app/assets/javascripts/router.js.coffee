App.Router.reopen
  location: "history"

App.Router.map ->
  @resource 'search', ->
    @route 'new'
    @route 'results', 
      path: '/:startDate/:endDate/:pickupDropOffLocations'
      queryParams: ['sort', 'filter']

  @resource 'vans', ->
    @route 'create'
    @route 'edit', path: ':van_id/edit'

  @resource 'itineraries', ->
    @route 'show', path: ':itinerary_id'
    @resource 'itineraryEdit', path: ':itinerary_id/edit', ->
      @resource 'locationEdit', path: 'location/:location_id/edit'

  @route 'not_found', { path: '/*not_found' }




