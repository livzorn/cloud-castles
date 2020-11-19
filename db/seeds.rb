# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:#

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create(email: "olivia_zorn@zorn.com", password: "lewagon")
User.create(email: "neil.quigley@me.com", password: "topsecret")


chamborigaud = Castle.new(user: user, name: "Chateau Chamborigaud", description: "Luxury ancient Disney-style castle
  in the Cevennes Mountains. Surrounded by 5 acres of land – this chateau mixes a modern style with fine
  medieval character to great effect.", location: "Languedoc", price: 10000)
chamborigaud1 = URI.open('https://images.unsplash.com/photo-1526816229784-65d5d54ac8bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
chamborigaud.photos.attach(io: chamborigaud1, filename: 'chamborigaud1.jpg', content_type: 'image/jpg')

puts "created Chateau Chamborigaud"

montsymond = Castle.create(user: user, name: "Castle Montsymond", description: "1. Nearly 000m2 living space +
  outbuildings. Set in a beautiful 7-hectare park closed, with a private fishing pond. Located 3
  minutes from the medieval village of Romenay (shops) and 15 km from Tournus, capital of gastronomy
  in Burgundy (with its many Michelin starred restaurants). Castle completely renovated in 2015/2016,
  quality furniture. Heated swimming pool open from April 1st to October 31st. Espace wellness in the
  outbuildings with gym and weight training, sauna, steam room, massage room. Recreation space in the
  castle with Play-Station 3, table tennis, petanque table, darts, games, poker table, pool table, table football ...
  Each of the 10 rooms has its own attached bathroom.", location: "Romenay, Saone-et-Loire", price: 12000)
montsymond1 = URI.open("https://images.unsplash.com/20/cambridge.JPG?ixlib=rb-1.2.1&auto=format&fit=crop&w=1630&q=80")
montsymond.photos.attach(io: montsymond1, filename: 'montsymond1.jpg', content_type: 'image/jpg')

puts "created Castle Montsymond"

volognano = Castle.create(user: user, name: "Castle of Volognano", description: "Volognano is a unique village
  in the world that offers the opportunity to enjoy countless experiences of taste, life, and learning
  in one of the most beautiful Italian regions, Tuscany. The Castello di Volognano is located in the heart
  of the Chianti Colli Fiorentini. Its suites, rooms, swimming pool and gardens are perfect for holidays
  and exclusive events, but also to take part in tastings and food and wine workshops with direct sales of
  local products. All this just 16 km from the historic center of Florence.", location: "Tuscany, Italy",
  price: 13000)
volognano1 = URI.open("https://images.unsplash.com/photo-1601985025607-4dd4681fef8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80")
volognano.photos.attach(io: volognano1, filename: 'volognao1.jpg', content_type: 'image/jpg')

puts "created Castle of Volognano"

osbert = Castle.create(user: user, name: "Villa Osbert", description: "Castello di Montegufoni is an exclusive
  location to spend wonderful holidays in the heart of Chianti Region. Dating back to the 12th century
  and restored in the 17th century by the noble family of Acciaioli, the Castle has a magnificent tower
  built on the model of the one of Palazzo Vecchio in Florence. Montegufoni Castle is part of a large
  estate comprising vineyards and olive trees and is surrounded by the beautiful Chianti landscape.
  In the castle there are 39 apartments and a large garden with a nice swimming pool: the perfect spot
  to relax and have fun with your family and friends. Distances from the villa: the small village of
  Montagnana V.P. with food shops 1 km, Montespertoli with all kinds of shops approx. 5 km, Florence 20 km,
  Pisa approx. 70 km.", location: "Florence, Italy", price: 8000, photos: [])
osbert1 = URI.open("https://images.unsplash.com/photo-1571075051578-c8cd15385f46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
osbert.photos.attach(io: osbert1, filename: 'osbert1.jpg', content_type: 'image/jpg')

puts "created Villa Osbert"

joyaux = Castle.create(user: user, name: "Chateau Des Joyaux", description: "This magnificent château in the Loire
  Valley is known as “Petit Chambord”, for its resemblance to the royal palace in Loir-et-Cher. Built in
  1854, it’s now the site of truly grand weddings, where guests stay in luxurious suites or beautiful rooms
  and can have daily meals prepared if you wish. Your on-site concierge, Cynthia, will welcome you warmly -
  ask her about arranging horseback rides or spa services (or both!)", location: "Loire Valley, France",
  price: 10000, photos: [])
joyaux1 = URI.open("https://images.unsplash.com/photo-1587976323738-871ba42da6f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
joyaux.photos.attach(io: joyaux1, filename: 'joyaux1.jpg', content_type: 'image/jpg')

puts "created Chateau Des Joyaux"

neuschwanstein = Castle.create(user: user, name: "Neuschwanstein Castle, Germany", description: "This 19th-century Romanesque
  Revival-style castle is the most visited castle in Germany as well as one of the most picturesque castles
  in the world. Instantly recognizable, Neuschwanstein Castle has served as inspiration for Disney’s Sleeping
  Beauty castle making this a real-life fairytale castle.", location: "Schwangau, Germany", price: 50000,
  photos: [])
neuschwanstein1 = URI.open("https://images.unsplash.com/photo-1534313314376-a72289b6181e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
neuschwanstein.photos.attach(io: neuschwanstein1, filename: 'neuschwanstein1.jpg', content_type: 'image/jpg')

puts "created Neuschwanstein Castle"

