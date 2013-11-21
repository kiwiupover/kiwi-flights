Ember.Handlebars.registerBoundHelper('people', function(value) {
  var icon;
  switch (value) {
    case 2:
      icon = "icon-two";
      break;
    case 3:
      icon = "icon-three";
      break;
    case 4:
      icon = "icon-four";
      break;
    case 6:
      icon = "icon-six";
      break;
  }
  return new Handlebars.SafeString('<i class="people ' + icon + '"></i>');
});
