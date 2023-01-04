# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning db"
Reservation.destroy_all
Livre.destroy_all
puts 'cleaning user'
User.destroy_all

puts 'creating user'

user1 = User.create(
  email: "user1@default.com",
  password: "1234567"
)

puts 'creating books'

livre1 = Livre.create(
  titre: "Le mage du Kremlin",
  auteur: "Giuliano da Empoli",
  note: 3
)

livre2 = Livre.create(
  titre: "Les enfants sont rois",
  auteur: "Delphine de Vigan",
  note: 3
)

livre3 = Livre.create(
  titre: "Le poids du papillon",
  auteur: "Erri de Luca",
  note: 2
)

livre4 = Livre.create(
  titre: "GPS",
  auteur: "Lucie Rico",
  note: 1
)

livre5 = Livre.create(
  titre: "L’invention de nos vies",
  auteur: "Karine Tuil",
  note: 3
)

livre6 = Livre.create(
  titre: "La place",
  auteur: "Annie Ernaux",
  note: 3
)

livre7 = Livre.create(
  titre: "La treizième heure",
  auteur: "Emmanuelle Bayamack Tam",
  note: 2
)

livre8 = Livre.create(
  titre: "Madame Sagan",
  auteur: "Geneviève Moll",
  note: 2
)

livre9 = Livre.create(
  titre: "Lady Chevy",
  auteur: "John Woods",
  note: 2
)

livre10 = Livre.create(
  titre: "Le doorman",
  auteur: "Madeleine Assas",
  note: 4
)

livre11 = Livre.create(
  titre: "Avant que la nuit ne m’emporte",
  auteur: "Guy Cuevas",
  note: 3
)

livre12 = Livre.create(
  titre: "Lumière d’été puis vient la nuit",
  auteur: "Jon Kalman Stefansson",
  note: 2
)

livre13 = Livre.create(
  titre: "La panthère des neiges",
  auteur: "Sylvain Tesson",
  note: 2
)

livre14 = Livre.create(
  titre: "L’affaire Alaska Sanders",
  auteur: "Joël Dicker",
  note: 2
)

livre15 = Livre.create(
  titre: "L’histoire du fils",
  auteur: "Marie Hélène Lafon",
  note: 3
)

puts "finished"
