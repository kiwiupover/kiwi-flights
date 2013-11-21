App.ItinerariesRoute = Em.Route.extend
  model: ->
    @get('store').findAll('itinerary')

 
  setupController: (controller, model) ->
    @_super(controller, model)
    @controllerFor('itinerariesIndex').set('content', model)
