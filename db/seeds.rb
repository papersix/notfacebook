# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(name:"Red Rum", place: "Some Place", city: "Richmond", description: "Description Here")
Event.create(name:"White Box Benefit", place: "Chelsea Place", city: "Huntsville", description: "Description Here")
Event.create(name:"Orange Meetup", place: "Pin Lake", city: "Miami", description: "Description Here")
Event.create(name:"Dead Beats", place: "Mandel Lake", city: "Boston", description: "Description Here")
Event.create(name:"Pin Shift", place: "Canary Island", city: "New York", description: "Description Here")
Event.create(name:"Random Numbers", place: "Empire State Building", city: "New York", description: "Description Here")
Event.create(name:"Like Events", place: "Talhouse", city: "New York", description: "Description Here")

puts Event.all
