# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:#

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Castle.destroy_all

puts "cleaned database"

user1 = User.create(email: "olivia_zorn@zorn.com", password: "lewagon")
user2 = User.create(email: "neil.quigley@me.com", password: "topsecret")

puts "created 2 users"

chamborigaud = Castle.new(user: user1, name: "Chateau Chamborigaud", description: "Luxury ancient Disney-style castle
  in the Cevennes Mountains. Surrounded by 5 acres of land – this chateau mixes a modern style with fine
  medieval character to great effect. Wander through the manicured gardens and enjoy 7 course meals of the finest
  French cuisine.", location: "Chamborigaud, France", price: 10000, sleeps: 50, bedrooms: 29, bathrooms: 35)
chamborigaud1 = URI.open('https://images.unsplash.com/photo-1526816229784-65d5d54ac8bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
chamborigaud2 = URI.open("https://images.unsplash.com/photo-1549895058-36748fa6c6a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80")
chamborigaud3 = URI.open("https://images.unsplash.com/photo-1605019104818-7d6ff0e18851?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
chamborigaud4 = URI.open("https://images.unsplash.com/photo-1598902572700-ce5972e68deb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80")
chamborigaud.photos.attach(io: chamborigaud1, filename: 'chamborigaud1.jpg', content_type: 'image/jpg')
chamborigaud.photos.attach(io: chamborigaud2, filename: 'chamborigaud2.jpg', content_type: 'image/jpg')
chamborigaud.photos.attach(io: chamborigaud3, filename: 'chamborigaud3.jpg', content_type: 'image/jpg')
chamborigaud.photos.attach(io: chamborigaud4, filename: 'chamborigaud4.jpg', content_type: 'image/jpg')
chamborigaud.save!

puts "created Chateau Chamborigaud"

montsymond = Castle.new(user: user1, name: "Castle Montsymond", description: "1. Nearly 000m2 living space +
  outbuildings. Set in a beautiful 7-hectare park closed, with a private fishing pond. Located 3
  minutes from the medieval village of Romenay (shops) and 15 km from Tournus, capital of gastronomy
  in Burgundy (with its many Michelin starred restaurants). Castle completely renovated in 2015/2016,
  quality furniture. Heated swimming pool open from April 1st to October 31st.", location: "Romenay, Saone-et-Loire", price: 12000,
  sleeps: 62, bedrooms: 33, bathrooms: 40)
montsymond1 = URI.open("https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&auto=format&fit=crop&w=1630&q=80")
montsymond2 = URI.open("https://images.unsplash.com/photo-1526816076666-e3ae0c7ac878?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")
montsymond3 = URI.open("https://images.unsplash.com/photo-1438954936179-786078772609?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2101&q=80")
montsymond4 = URI.open("https://images.unsplash.com/photo-1572387263462-c596296d68a8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")
montsymond.photos.attach(io: montsymond1, filename: 'montsymond1.jpg', content_type: 'image/jpg')
montsymond.photos.attach(io: montsymond2, filename: 'montsymond2.jpg', content_type: 'image/jpg')
montsymond.photos.attach(io: montsymond3, filename: 'montsymond3.jpg', content_type: 'image/jpg')
montsymond.photos.attach(io: montsymond4, filename: 'montsymond4.jpg', content_type: 'image/jpg')
montsymond.save!

puts "created Castle Montsymond"

volognano = Castle.new(user: user2, name: "Castle of Volognano", description: "Volognano is a unique village
  in the world that offers the opportunity to enjoy countless experiences of taste, life, and learning
  in one of the most beautiful Italian regions, Tuscany. The Castello di Volognano is located in the heart
  of the Chianti Colli Fiorentini. Its suites, rooms, swimming pool and gardens are perfect for holidays
  and exclusive events. All this just 16 km from the historic center of Florence.", location: "Tuscany, Italy",
  price: 13500, sleeps: 42, bedrooms: 21, bathrooms: 18)
volognano1 = URI.open("https://images.unsplash.com/photo-1601985025607-4dd4681fef8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80")
volognano2 = URI.open("https://images.unsplash.com/photo-1483425201194-8c13398c65d6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80")
volognano3 = URI.open("https://images.unsplash.com/photo-1597147873356-ab36fc52dd2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
volognano4 = URI.open("https://images.unsplash.com/photo-1599657623524-169560195147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
volognano.photos.attach(io: volognano1, filename: 'volognao1.jpg', content_type: 'image/jpg')
volognano.photos.attach(io: volognano2, filename: 'volognao2.jpg', content_type: 'image/jpg')
volognano.photos.attach(io: volognano3, filename: 'volognao3.jpg', content_type: 'image/jpg')
volognano.photos.attach(io: volognano4, filename: 'volognao4.jpg', content_type: 'image/jpg')
volognano.save!

puts "created Castle of Volognano"

osbert = Castle.new(user: user2, name: "Villa Osbert", description: "Castello di Montegufoni is an exclusive
  location to spend wonderful holidays in the heart of Chianti Region. Dating back to the 12th century
  and restored in the 17th century by the noble family of Acciaioli, the Castle has a magnificent tower
  built on the model of the one of Palazzo Vecchio in Florence. In the castle there are 39 apartments and
  a large garden with a nice swimming pool: the perfect spot to relax and have fun with your family and
  friends.", location: "Florence, Italy", price: 8000, sleeps: 30, bedrooms: 18, bathrooms: 12)
osbert1 = URI.open("https://images.unsplash.com/photo-1571075051578-c8cd15385f46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
osbert2 = URI.open("https://images.unsplash.com/photo-1596321348931-5c7a8ff89d09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2813&q=80")
osbert3 = URI.open("https://images.unsplash.com/photo-1581553804680-a8521d2bdd1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80")
osbert4 = URI.open("https://images.unsplash.com/photo-1542320260-f8f651de8c12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
osbert.photos.attach(io: osbert1, filename: 'osbert1.jpg', content_type: 'image/jpg')
osbert.photos.attach(io: osbert2, filename: 'osbert2.jpg', content_type: 'image/jpg')
osbert.photos.attach(io: osbert3, filename: 'osbert3.jpg', content_type: 'image/jpg')
osbert.photos.attach(io: osbert4, filename: 'osbert4.jpg', content_type: 'image/jpg')
osbert.save!

puts "created Villa Osbert"

joyaux = Castle.new(user: user1, name: "Chateau Des Joyaux", description: "This magnificent château in the Loire
  Valley is known as “Petit Chambord”, for its resemblance to the royal palace in Loir-et-Cher. Built in
  1854, it’s now the site of truly grand weddings, where guests stay in luxurious suites or beautiful rooms
  and can have daily meals prepared if you wish. Your on-site concierge, Cynthia, will welcome you warmly -
  ask her about arranging horseback rides or spa services (or both!)", location: "Loire Valley, France",
  price: 30000, sleeps: 79, bedrooms: 44, bathrooms: 29)
joyaux1 = URI.open("https://images.unsplash.com/photo-1587976323738-871ba42da6f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
joyaux2 = URI.open("https://images.unsplash.com/photo-1562932831-afcfe48b5786?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1689&q=80")
joyaux3 = URI.open("https://images.unsplash.com/photo-1488035099513-dcaa5e6f1337?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
joyaux4 = URI.open("https://images.unsplash.com/photo-1577464991346-57ac444c5cdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1232&q=80")
joyaux.photos.attach(io: joyaux1, filename: 'joyaux1.jpg', content_type: 'image/jpg')
joyaux.photos.attach(io: joyaux2, filename: 'joyaux2.jpg', content_type: 'image/jpg')
joyaux.photos.attach(io: joyaux3, filename: 'joyaux3.jpg', content_type: 'image/jpg')
joyaux.photos.attach(io: joyaux4, filename: 'joyaux4.jpg', content_type: 'image/jpg')
joyaux.save!

puts "created Chateau Des Joyaux"

neuschwanstein = Castle.new(user: user2, name: "Neuschwanstein Castle, Germany", description: "This 19th-century Romanesque
  Revival-style castle is the most visited castle in Germany as well as one of the most picturesque castles
  in the world. Instantly recognizable, Neuschwanstein Castle has served as inspiration for Disney’s Sleeping
  Beauty castle making this a real-life fairytale castle.", location: "Schwangau, Germany", price: 50000,
  sleeps: 37, bedrooms: 22, bathrooms: 15)
neuschwanstein1 = URI.open("https://images.unsplash.com/photo-1557066911-9184d3f95959?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
neuschwanstein2 = URI.open("https://images.unsplash.com/photo-1580677616212-2fa929e9c2cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80")
neuschwanstein3 = URI.open("https://images.unsplash.com/photo-1563786785330-2ad8162ef53a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
neuschwanstein4 = URI.open("https://images.unsplash.com/photo-1472228283686-42356d789f66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
neuschwanstein.photos.attach(io: neuschwanstein1, filename: 'neuschwanstein1.jpg', content_type: 'image/jpg')
neuschwanstein.photos.attach(io: neuschwanstein2, filename: 'neuschwanstein2.jpg', content_type: 'image/jpg')
neuschwanstein.photos.attach(io: neuschwanstein3, filename: 'neuschwanstein3.jpg', content_type: 'image/jpg')
neuschwanstein.photos.attach(io: neuschwanstein4, filename: 'neuschwanstein4.jpg', content_type: 'image/jpg')
neuschwanstein.save!

puts "created Neuschwanstein Castle"
puts " *** "
puts "Voila! Your magical castles have been born!"
