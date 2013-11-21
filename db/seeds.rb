# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

# locations = Location.create([
#   { name: 'Auckland', pick_up: true, drop_off: true },
#   { name: 'Christchruch', pick_up: true, drop_off: true },
#   { name: 'Wellington', pick_up: true, drop_off: true }
# ])


itineraries = Itinerary.create([
    {id: 1, title: "Wellington to Auckland", description: "Something"},
    {id: 2, title: "Auckland to Wellington", description: "We are moving"},
    {id: 3, title: "Tour Northland", description: "Wahoo northland"},
    {id: 4, title: "Wine Country", description: "Drink it up"},
])


locations = Location.create([
    {name: "Auckland", details: "in Auckland", itinerary_id: 1},
    {name: "Browns Bay", details: "Go to Beach", itinerary_id: 1},
    {name: "Gore", details: "the deep south", itinerary_id: 1},
    {name: "Auckland", details: "in Auckland", itinerary_id: 1},
    {name: "Browns Bay", details: "Go to Beach", itinerary_id: 1},
    {name: "Gore", details: "the deep south", itinerary_id: 1},
    {name: "Auckland", details: "in Auckland", itinerary_id: 1},
    {name: "Browns Bay", details: "Go to Beach", itinerary_id: 1},
    {name: "Gore", details: "the deep south", itinerary_id: 1},
    {name: "Auckland", details: "in Auckland", itinerary_id: 1},
    {name: "Browns Bay", details: "Go to Beach", itinerary_id: 1},
    {name: "Gore", details: "the deep south", itinerary_id: 1},

    {name: "Christchruch", details: "shaking things up", itinerary_id: 2},
    {name: "Picton", details: "Crossing over", itinerary_id: 2},
    {name: "Wellington", details: "the capital", itinerary_id: 2},
])

vans = Van.create([
  {
    id: 1,
    name: "Beta 2 Berth",
    brand: "Spaceships",
    description: "A great ride for two",
    beds: 2,
    image_url: "assets/beta-2-berth.jpg",
    details: "<ul>
                <li>The best Spaceship to drive</li>
                <li>The most comfortable to travel in</li>
                <li>The best fuel economy</li>
                <li>Seat belted seating for 3-4</li>
                <li>Large double bed with two sleeping options</li>
                <li>Self charging dual battery system (24+ hours)</li>
                <li>In built DVD player + iPod cord</li>
                <li>15 litre fridge/freezer</li>
                <li>Two burner cooker</li>
                <li>Improved rear awning + side awning</li>
              </ul>"
  }, {
    id: 2,
    name: "Beta 4 Berth Premium",
    brand: "Spaceships",
    description: "3-4 people on a road trip",
    beds: 4,
    image_url: "assets/beta-4-berth.jpg",
    details: "<ul>
                <li>Sleeping for 3-4</li>
                <li>Brand new roof pod</li>
                <li>Seat belted seating for 3-4
                <li>Fridge/Freezer</li>
                <li>Dual burner cooker</li>
                <li>The best Spaceship to drive</li>
                <li>The most comfortable to travel in</li>
                <li>The best fuel economy</li>
                <li>Seat belted seating for 3-4</li>
                <li>Large double bed with two sleeping options</li>
                <li>Self charging dual battery system (24+ hours)</li>
                <li>In built DVD player + iPod cord</li>
                <li>Improved rear awning + side awning</li>
              </ul>"
  }, {
    id: 3,
    name: "Rocket Budget Option",
    brand: "Spaceships",
    description: "Cheap road tripper",
    beds: 2,
    image_url: "assets/rocket-2-berth.jpg",
    details: "<ul>
                <li>Seat belted seating for 4</li>
                <li>Large double bed with two sleeping options</li>
                <li>Dual burner portable cooker</li>
                <li>iPod cord</li>
                <li>Chiller bag</li>
              </ul>"
  }
])

