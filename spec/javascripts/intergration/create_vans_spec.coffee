module "Create Vans",
  setup: ->
    Ember.run ->
      App.reset()
      App.deferReadiness()


test "should render the title", ->
  stubEndpointForHttpRequest('/api/vans', json)
  Ember.run App, "advanceReadiness"
  visit("/vans").then ->
    title = $("h2:first")
    pageTitle = "Vans"
    equal title.text(), pageTitle, "The title was: " + title.text() + " expected: " + pageTitle

test "should render the title", ->
  Ember.run App, "advanceReadiness"
  visit("/vans/create").then ->
    title = $("h3:first")
    pageTitle = "Add a Van"
    equal title.text(), pageTitle, "The title was: " + title.text() + " expected: " + pageTitle

test "create a van", ->
  Ember.run App, "advanceReadiness" 
  visit("/vans/create").then ->
    fillIn ".van-name", "Van Name"
    click(".submit").then ->
      vanList = $('ul.vans').find('li.result').length
      expected = 2
      equal vanList, 2, "Expected One Van to be created and we found " + vanList


json = vans: [
  id: 1
  beds: 2
  brand: "Spaceships"
  description: "A great ride for two"
  details: "<ul>\n <li>The best Spaceship to drive</li>\n <li>The most comfortable to travel in</li>\n <li>The best fuel economy</li>\n <li>Seat belted seating for 3-4</li>\n <li>Large double bed with two sleeping options</li>\n <li>Self charging dual battery system (24+ hours)</li>\n <li>In built DVD player + iPod cord</li>\n <li>15 litre fridge/freezer</li>\n <li>Two burner cooker</li>\n <li>Improved rear awning + side awning</li>\n </ul>"
  image_url: "beta-2-berth-drive-mode.jpg"
  name: "Beta 2 Berth"
  rating: null
  image_large: "beta-2-berth-camping-mode.jpg"
  fridge: true
  freezer: true
  stove: true
  dvd_player: true
  microwave: false
  shower: false
  toilet: false
]