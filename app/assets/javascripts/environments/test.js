App.Environment = "test";
App.Host = location.protocol + '//' + location.host;
console.log("Backend host: " + App.Host);
App.Auth.baseUrl = App.Host;