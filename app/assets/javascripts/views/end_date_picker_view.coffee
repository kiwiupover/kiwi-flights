App.EndDatePicker = Em.TextField.extend(Ember.TextSupport,
  attributes: ["monthsFull", "monthsShort", "weekdaysFull", "weekdaysShort", "monthPrev", "monthNext", "showMonthsFull", "showWeekdaysShort", "today", "clear", "format", "formatSubmit", "hiddenSuffix", "firstDay", "monthSelector", "yearSelector", "dateMin", "dateMax", "datesDisabled", "disablePicker"]
  events: ["onOpen", "onClose", "onSelect", "onStart"]
  tagName: "input"
  classNames: "pickadate required"
  didInsertElement: ->
    options = {}
    content = this.content
    @get("events").forEach (event) ->
      callback = self[event]
      options[event] = callback  if callback

    @get("attributes").forEach (attr) ->
      options[attr] = self[attr]  if self[attr] isnt `undefined`

    onSelectCallback = options.onSelect
    options.onSelect = ->
      Ember.set self, "value", @getDate(true)
      onSelectCallback.call this  if onSelectCallback
    options.onOpen = ->
      startDate = content.get('startDate')
      date = new Date(startDate)
      this.setDateLimit( [ date.getFullYear(), date.getMonth() + 1, date.getDate()] )

    @$().pickadate options

  change: ->
    this.$().valid()
)
