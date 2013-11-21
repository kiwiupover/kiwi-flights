Ember.Handlebars.registerBoundHelper('htmlSafe', function(text) {
  if (text) {
    return new Handlebars.SafeString(text);
  }
});

Ember.Handlebars.registerBoundHelper('showdown', function(text) {
  var converter = new Showdown.converter();
  if (text) {
    return new Handlebars.SafeString(converter.makeHtml(text));
  }
});

Ember.Handlebars.registerBoundHelper('titleCase', function(text) {
  return new Handlebars.SafeString(Case.title(text));
});

