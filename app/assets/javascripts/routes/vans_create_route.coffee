App.VansCreateRoute = Em.Route.extend
  # activate: ->
  # deactivate: ->
  # setupController: (controller, model)->
  # renderTemplate: ->
  # beforeModel: ->
  # afterModel: ->

  model: ->
    @get('store').createRecord('van')

  actions: 
    save: ->
      @modelFor('vansCreate').save()
      @transitionTo 'vans'
