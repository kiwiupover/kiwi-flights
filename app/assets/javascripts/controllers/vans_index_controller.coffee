App.VansIndexController = Em.ObjectController.extend
  needs: ['vans'],
  
  vans: Ember.computed.alias('controllers.vans')
