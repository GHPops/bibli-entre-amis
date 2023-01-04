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
