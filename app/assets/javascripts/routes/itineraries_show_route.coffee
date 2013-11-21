App.ItinerariesShowRoute = Em.Route.extend
  model: (params) ->
    @get('store').find('itinerary', params.itinerary_id)
