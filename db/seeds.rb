# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "Olivia", email: "olivia_zorn@zorn.com")


Castle.create(user: user, name: "Chateau Chamborigaud", description: "Luxury ancient Disney-style castle in the Cevennes Mountains. Surrounded by 5 acres of land – this chateau mixes a modern style with fine medieval character to great effect.", location: "Languedoc", price: 10000)
puts "created one castle"
