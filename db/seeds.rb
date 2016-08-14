# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create(name:"Red Rum", place: "Some Place", time: "8pm", description: "Description Here")
Event.create(name:"White Box Benefit", place: "Chelsea Place", time: "2pm", description: "Description Here")
Event.create(name:"Orange Meetup", place: "Pin Lake", time: "4am", description: "Description Here")
Event.create(name:"Dead Beats", place: "Mandel Lake", time: "10am", description: "Description Here")
Event.create(name:"Pin Shift", place: "Canary Island", time: "1am", description: "Description Here")
Event.create(name:"Random Numbers", place: "Empire State Building", time: "3pm", description: "Description Here")
Event.create(name:"Like Events", place: "Talhouse", time: "1pm", description: "Description Here")

puts Event.all
