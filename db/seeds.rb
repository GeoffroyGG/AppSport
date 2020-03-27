# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
League.destroy_all
Player.destroy_all

League.create(name: 'COD20', stars: 4)
League.create(name: 'LOL20', stars: 5)

Player.create(name: 'Tchoob')
Player.create(name: '100S')
Player.create(name: 'Nikistos')
