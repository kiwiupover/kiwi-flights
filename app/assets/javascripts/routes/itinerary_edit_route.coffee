App.ItineraryEditRoute = Em.Route.extend
  model: (params) ->
    @get('store').find('itinerary', params.itinerary_id)

  setupController: (controller, model) ->
    @_super(controller, model)
    @controllerFor('itineraryEditIndex').set('content', model)

  actions:
    save: ->
      @get('store').save()


