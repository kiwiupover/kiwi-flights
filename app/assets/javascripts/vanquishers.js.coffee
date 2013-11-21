#= require ./store
#= require_tree ./mixins
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require_tree ./classes
#= require_tree ./components
#= require ./router
#= require_self


Em.TextField.reopen
  attributeBindings: ['name']

Em.Select.reopen
  attributeBindings: ['name']
  change: ->
    this.$().valid()

