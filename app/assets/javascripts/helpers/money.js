Ember.Handlebars.registerBoundHelper('dollarsCents', function(value) {
  if (isNaN(value)) { return "0.00"; }
  var number = value / 100,
      numberFormatted = accounting.formatNumber(number, 2, ","),
      splitNumber = numberFormatted.split('.');


  return new Handlebars.SafeString('<span class="dollar-sign">$</span>' + splitNumber[0] + '<span class="cents">.' + splitNumber[1] + '</span>')
});

Ember.Handlebars.registerBoundHelper('dollars', function(value) {
  if (isNaN(value)) { return "0.00"; }
  var number = value / 100,
      numberFormatted = accounting.formatNumber(number, 0, ",");

  return new Handlebars.SafeString('<span class="dollar-sign">$</span>' + numberFormatted)
});
