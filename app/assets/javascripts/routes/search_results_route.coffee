App.SearchResultsRoute = Em.Route.extend
  
  model: (params, transition, queryParams) -> 
    @setupData(params)
    
  setupController: (controller, model, queryParams) ->
    controller.setProperties
      startDate: model.startDate, 
      endDate: model.endDate, 
      pickupDropOffLocations: model.pickupDropOffLocations

    @controllerFor("vans").set "content", @get('store').findAll('van')
    
    controller.set 'filterString', queryParams.filter
    controller.set 'sortAscending', if queryParams.sort
      true
    else
      false

    controller.send('sendResults')

  serialize: (model) ->

    @setupData(model) if model

  setupData: (data) ->
    startDate: data.startDate, 
    endDate: data.endDate, 
    pickupDropOffLocations: data.pickupDropOffLocations
  
