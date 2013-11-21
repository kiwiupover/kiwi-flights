App.SearchNewController = Em.ObjectController.extend
  
  actions: 
    save: ->
      startDate = moment(this.get('startDate'))
      endDate = moment(this.get('endDate'))
      pickupLocation = this.get('pickupLocation.rentalLocation').toLocaleLowerCase()

      if this.get('dropOffLocation')
        dropOffLocation = this.get('dropOffLocation.rentalLocation').toLocaleLowerCase()
      else
        dropOffLocation = pickupLocation

      startDateFomatted = startDate.format("YYYY-MM-DD")
      endDateFomatted = endDate.format("YYYY-MM-DD")

      pickupDropOffLocations = "#{pickupLocation}-#{dropOffLocation}"
      
      search = Ember.Object.create
        startDate: startDateFomatted
        endDate: endDateFomatted
        pickupDropOffLocations: pickupDropOffLocations

      @transitionToRoute('search.results', search)


