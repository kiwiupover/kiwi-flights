App.IndexRoute = Em.Route.extend
  redirect: ->
    @transitionTo('search.new')
