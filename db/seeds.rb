# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


trouble1 = Trouble.create!(name: "Chimiothérapie")
# test pour recipes dans index et show
recipes1 = Recipe.create(sku: 'soupe à la patate douce', name: "soupe patate douce", description: "soupe patate douce", price: 15, photo_url: "https://static.cuisineaz.com/400x320/i135820-soupe-a-la-patate-douce.jpeg")

recipes2 = Recipe.create(name: "pates", description: "pates au beurre", price: 12.5)
