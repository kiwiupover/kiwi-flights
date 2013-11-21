# for more details see: http://emberjs.com/guides/views/

App.ItinerariesShowView = Ember.View.extend

  didInsertElement: ->
    windowHeight = $(window).height()
    windowWidth = $(window).width()
    $sections = this.$().find('section')
    $sections.css({'height': windowHeight + 40})


