App.LocationEditController = Em.ObjectController.extend
  
  actions: 
    save: ->
      @get('store').save()

    destroy: ->
      @content.deleteRecord();
      @get('store').save()
      @transitionToRoute('itineraryEdit')

    openPicker: (model) ->
      App.FilepickerHelper.openPicker(model, "imgUrl")




