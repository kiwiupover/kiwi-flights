App.VansEditRoute = Em.Route.extend
  # activate: ->
  # deactivate: ->
  # setupController: (controller, model)->
  # renderTemplate: ->
  # beforeModel: ->
  # afterModel: ->

  actions: 
    save: ->
      @modelFor('vansEdit').save()
      @transitionTo 'vans'