module('Search Route Spec ', {
  setup: function() {
    Ember.run(function() {
      App.reset();
      App.deferReadiness();
    });
  }
});

test('Without params should send you back to the home page', function() {
  Ember.run(App, 'advanceReadiness');
  visit("/searchResults").then(function() {
    var title = $('h3:first');
    var pageTitle = "Travel New Zealand, go where ever your soul leads";
    equal(title.text(), pageTitle , "The title was: " + title.text() + " expected: " + pageTitle);
  });
});
