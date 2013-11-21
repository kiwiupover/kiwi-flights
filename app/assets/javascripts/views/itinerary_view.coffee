App.ItineraryView = Em.View.extend
  tagName: 'section'
  templateName: 'itinerary'

  didInsertElement: ->
    windowHeight = $(window).height()
    windowWidth = $(window).width()
    $wrapper = this.$().find('.wrapper')

    $textBox = @$().find('.text')
    $imageBox = @$().find('.image')

    console.log $textBox.height() + "  " + $imageBox.height()

    $wrapper.css({'height': windowHeight + 40})

    $textBox.css({'top': parseInt((windowHeight / 2) - ($textBox.height() / 2) - 40) + 'px'})
    $imageBox.css({'top': parseInt((windowHeight / 2) - ($imageBox.height() / 2) - 40) + 'px'})

