App.SearchNewRoute = Em.Route.extend
  model: ->
    @get('store').createRecord('search')


