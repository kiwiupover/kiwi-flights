App.ToggleSwitchComponent = Ember.Component.extend
  classNames: ["toggle-switch"]
  
  reset: (->
    @$("input").attr "checked", true  if @get("value")
  ).on("didInsertElement")
  
  change: (->
    @on "change", this, @_updateElementValue
  ).on("init")
  
  checkId: (->
    "checker-" + (@get("elementId"))
  ).property()
  
  _updateElementValue: ->
    @set "value", @$("input").prop("checked")
