App.VansRoute = Em.Route.extend
  model: ->
    @get('store').findAll('van')

  setupController: (controller, model) ->
    @_super(controller, model)
    @controllerFor("vans.index").set "content", model

  actions: 
    deleteVan: (van) ->
      if (window.confirm('Are you sure you want to delete ' + van.get('name') + '?'))
        van.deleteRecord()
        van.save()

      
      
