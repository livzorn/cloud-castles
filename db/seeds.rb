# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:#

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create(email: "olivia_zorn@zorn.com", password: "lewagon")
User.create(email: "neil.quigley@me.com", password: "topsecret")


Castle.create(user: user, name: "Chateau Chamborigaud", description: "Luxury ancient Disney-style castle in the Cevennes Mountains. Surrounded by 5 acres of land – this chateau mixes a modern style with fine medieval character to great effect.", location: "Languedoc", price: 10000)
puts "created Chateau Chamborigaud"

Castle.create(user: user, name: "Castle Montsymond", description: "1. Nearly 000m2 living space + outbuildings. Set in a beautiful 7-hectare park closed, with a private fishing pond. Located 3 minutes from the medieval village of Romenay (shops) and 15 km from Tournus, capital of gastronomy in Burgundy (with its many Michelin starred restaurants).

  Castle completely renovated in 2015/2016, quality furniture.

  Heated swimming pool open from April 1st to October 31st.

  Espace wellness in the outbuildings with gym and weight training, sauna, steam room, massage room.

  Recreation space in the castle with Play-Station 3, table tennis, petanque table, darts, games, poker table, pool table, table football ...

  Each of the 10 rooms has its own attached bathroom.", location: "Romenay, Saone-et-Loire", price: 12000)
puts "created Castle Montsymond"

Castle.create(user: user, name: "Castle of Volognano", description: "Volognano is a unique village in the world that offers the opportunity to enjoy countless experiences of taste, life, and learning in one of the most beautiful Italian regions, Tuscany. The Castello di Volognano is located in the heart of the Chianti Colli Fiorentini. Its suites, rooms, swimming pool and gardens are perfect for holidays and exclusive events, but also to take part in tastings and food and wine workshops with direct sales of local products. All this just 16 km from the historic center of Florence.", location: "Tuscany, Italy", price: 13000)
puts "created Castle of Volognano"

Castle.create(user: user, name: "Villa Osbert", description: "Castello di Montegufoni is an exclusive location to spend wonderful holidays in the heart of Chianti Region.

  Dating back to the 12th century and restored in the 17th century by the noble family of Acciaioli, the Castle has a magnificent tower built on the model of the one of Palazzo Vecchio in Florence.

  Montegufoni Castle is part of a large estate comprising vineyards and olive trees and is surrounded by the beautiful Chianti landscape. In the castle there are 39 apartments and a large garden with a nice swimming pool: the perfect spot to relax and have fun with your family and friends.

  The Chianti Region is one of the most renowned charming area in Italy for its cultural, historical and enogastronomic traditions. This luxurious Castle offers to our guests incredible holiday experiences (on request) such as cooking lessons, event location, guided tours and more!

  Distances from the villa: the small village of Montagnana V.P. with food shops 1 km, Montespertoli with all kinds of shops approx. 5 km, Florence 20 km, Pisa approx. 70 km.", location: "Florence, Italy", price: 8000)
puts "created Villa Osbert"


