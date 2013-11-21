App.ApplicationController = Em.ObjectController.extend
  
  setup: (->
    @setHost App.Environment
    console.log App.Host
    @_super
  ).on('init'),
 
  setHost: (environment) ->
    App.Host = 'http://localhost:3800'        if environment is "development"
    App.Host = 'http://192.241.206.177:3800'  if environment is "production" 
    throw "you need to setup an environment"  if App.Host is null
    App.Host
