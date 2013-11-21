Ember.Handlebars.registerBoundHelper "date", (date) ->
  
  momemtDate = moment(date);
  formattedDate = momemtDate.format("MMM Do YYYY") # Aug 29 1970

  new Handlebars.SafeString(formattedDate)
