App.IndexView = Em.View.extend

  didInsertElement: ->
    this.$('#bg').css('background-image', 'url(' + this.randomPhoto() + ')');

  randomPhoto: ->
      photos = this.backgroundPhotos()
      length = photos.length
      randomNumber  = Math.floor(Math.random()*length)

      photo = '/assets/new_zealand/' + photos[randomNumber].photo

  backgroundPhotos: ->
    photos = [
      photo: 'hobbiton.jpg'
    ,
      photo: 'lake_coleridge.jpg'
    ,
      photo: 'new-zealand-coast.jpg'
    ,
      photo: 'new-zealand.jpg'
    ,
      photo: 'Piha-Beach-New-Zealand.jpg'
    ,
      photo: 'waiheke-island.jpg'
    ]

