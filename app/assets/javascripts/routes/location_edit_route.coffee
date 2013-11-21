App.LocationEditRoute = Em.Route.extend
  model: (params) ->
    @get('store').find('location', params.location_id)
