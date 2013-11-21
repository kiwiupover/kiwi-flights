module('Home page spec', {
  setup: function() {
    Ember.run(function() {
      App.reset();
      App.deferReadiness();
    });
  }
});

test('Home page has a title', function() {
  Ember.run(App, 'advanceReadiness');
  visit("/").then(function() {
    var title = $('h3:first');
    var pageTitle = "Travel New Zealand, go where ever your soul leads";
    equal(title.text(), pageTitle , "The title was: " + title.text() + " expected: " + pageTitle);
  });
});

test('show the date picker for start date', function() {
  Ember.run(App, 'advanceReadiness');
  visit("/").then(function() {
    var showPickADate = $('input:first');
    focusElement(showPickADate).then(function(){
      var picker = $('.pickadate__holder--opened');
      equal(picker.length, 1, "The date picker is not visible " + picker.length );
    })
  });
});