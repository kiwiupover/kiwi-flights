App.LocationEditView = Em.View.extend
  didInsertElement: ->
    if @.$(".filepicker").length > 0
      that = this;
      @.$(".filepicker").on 'click', (e) ->
        that.get('controller').send('openPicker', that.controller.get("model"))
        return false;



