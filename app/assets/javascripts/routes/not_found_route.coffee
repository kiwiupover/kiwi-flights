App.NotFoundRoute = Em.Route.extend

  beforeModel: (transition) ->
    @transitionTo('search.new') if transition.params = /(searchResults)/
