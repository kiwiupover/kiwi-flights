App.SearchNewView = Em.View.extend

  didInsertElement: ->
    @$().foundation "forms"

  willDestroyElement: ->
    @$().foundation "forms", "off"
    Foundation.libs.forms.settings.init = false

  actions: 
    save: ->
      valid = @$('form').valid()
      if valid
        @get('controller').send('save')


