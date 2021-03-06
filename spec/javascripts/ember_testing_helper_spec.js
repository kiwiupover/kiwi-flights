document.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>');

App.rootElement = '#ember-testing';

Ember.Test.registerHelper('focusElement', function(app, selector, context) {
  var $el = findWithAssert(selector, context);
  Ember.run(function() {
    $el.focus();
  });
  return wait();
});

App.setupForTesting();
App.injectTestHelpers();

function exists(selector) {
  return !!find(selector).length;
}

function stubEndpointForHttpRequest(url, json) {
    $.mockjax({
        url: url,
        dataType: 'json',
        responseText: json
    });
}

$.mockjaxSettings.logging = false;
$.mockjaxSettings.responseTime = 0;
