# for more details see: http://emberjs.com/guides/models/defining-models/

App.Van = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  details: DS.attr 'string'
  imageUrl: DS.attr 'string'
  imageLarge: DS.attr 'string'
  brand: DS.attr 'string'
  fridge: DS.attr 'boolean'
  freezer: DS.attr 'boolean'
  stove: DS.attr 'boolean'
  dvdPlayer: DS.attr 'boolean'
  microwave: DS.attr 'boolean'
  shower: DS.attr 'boolean'
  toilet: DS.attr 'boolean'
  beds: DS.attr 'number'
  rating: DS.attr 'string'

  smallImageUrl: (->
    "/assets/#{@get('imageUrl')}" if @get('imageUrl')
  ).property('imageUrl'),

  largeImageUrl: (->
    "/assets/#{@get('imageLarge')}" if @get('imageLarge')
  ).property('imageLarge'),

  fridgeLabel: (->
    'Fridge' if @get('fridge') is true
  ).property('fridge')

  freezerLabel: (->
    'Freezer' if @get('freezer') is true
  ).property('freezer')

  stoveLabel: (->
    'Stove' if @get('stove') is true
  ).property('stove')

  dvdPlayerLabel: (->
    'DVD Player' if @get('dvdPlayer') is true
  ).property('dvdPlayer')

  microwaveLabel: (->
    'Microwave' if @get('microwave') is true
  ).property('microwave')

  showerLabel: (->
    'Shower' if @get('shower') is true
  ).property('shower')
  
  toiletLabel: (->
    'Toilet' if @get('toilet') is true
  ).property('toilet')

# App.Van.FIXTURES = [
#   id: 1
#   price: 22400
#   name: "Beta 2 Berth"
#   brand: "Spaceships"
#   description: "A great ride for two"
#   beds: 2
#   imageUrl: "/assets/beta-2-berth.jpg"
#   imageLarge: "/assets/beta-2-berth-camping-mode.jpg"
#   fridge: true
#   freezer: true
#   stove: true
#   dvdPlayer: true
#   microwave: false
#   shower: false
#   toilet: false
#   details: "<ul>
#               <li>The best Spaceship to drive</li>
#               <li>The most comfortable to travel in</li>
#               <li>The best fuel economy</li>
#               <li>Seat belted seating for 3-4</li>
#               <li>Large double bed with two sleeping options</li>
#               <li>Self charging dual battery system (24+ hours)</li>
#               <li>In built DVD player + iPod cord</li>
#               <li>15 litre fridge/freezer</li>
#               <li>Two burner cooker</li>
#               <li>Improved rear awning + side awning</li>
#             </ul>"
#   url: "http://google.com"
# ,
#   id: 2
#   price: 32200
#   name: "Beta 4 Berth"
#   brand: "Spaceships"
#   description: "3-4 people on a road trip"
#   beds: 4
#   imageUrl: "/assets/beta-4-berth.jpg"
#   imageLarge: "/assets/beta-4-berth-driving-mode.jpg"
#   fridge: true
#   freezer: true
#   stove: true
#   dvdPlayer: true
#   microwave: false
#   shower: false
#   toilet: false
#   details: "<ul>
#               <li>Sleeping for 3-4</li>
#               <li>Brand new roof pod</li>
#               <li>Seat belted seating for 3-4
#               <li>Fridge/Freezer</li>
#               <li>Dual burner cooker</li>
#               <li>The best Spaceship to drive</li>
#               <li>The most comfortable to travel in</li>
#               <li>The best fuel economy</li>
#               <li>Seat belted seating for 3-4</li>
#               <li>Large double bed with two sleeping options</li>
#               <li>Self charging dual battery system (24+ hours)</li>
#               <li>In built DVD player + iPod cord</li>
#               <li>Improved rear awning + side awning</li>
#             </ul>"
#   url: "http://google.com"
# ,
#   id: 3
#   price: 19600
#   name: "Rocket 2 Berth"
#   brand: "Spaceships"
#   description: "Cheap road tripper"
#   beds: 2
#   imageUrl: "/assets/rocket-2-berth.jpg"
#   imageLarge: "/assets/rocket-2-berth-driving-mode.jpg"
#   fridge: false
#   freezer: false
#   stove: true
#   dvdPlayer: false
#   microwave: false
#   shower: false
#   toilet: false
#   details: "<ul>
#               <li>Seat belted seating for 4</li>
#               <li>Large double bed with two sleeping options</li>
#               <li>Dual burner portable cooker</li>
#               <li>iPod cord</li>
#               <li>Chiller bag</li>
#             </ul>"
#   url: "http://google.com"
# ]
