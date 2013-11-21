if(App.Environment == "development") {
  App.Host = 'http://localhost:3800';
  console.log("Backend host: " + App.Host);
}
