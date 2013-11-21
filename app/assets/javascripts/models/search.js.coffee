App.Search = DS.Model.extend
  startDate: DS.attr('date')
  endDate: DS.attr('date')
  pickUpLocation: DS.attr('string')
  dropOffLocation: DS.attr('string')

  totalNumberOfDays: (->
    startDate = moment(this.get('startDate'))
    endDate = moment(this.get('endDate'))
    return endDate.diff( startDate, 'days' ) + ' days'
  ).property('startDate', 'endDate')


