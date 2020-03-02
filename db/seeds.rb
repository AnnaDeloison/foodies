# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trouble.destroy_all
Recipe.destroy_all
TroubleRecipe.destroy_all
trouble1 = Trouble.create!(name: "chimio")
recipe1 = Recipe.create!(name: "salade")
recipe2 = Recipe.create!(name: "raclette")
trouble_recipe = TroubleRecipe.create!(recipe: recipe1, trouble: trouble1)
trouble_recipe = TroubleRecipe.create!(recipe: recipe2, trouble: trouble1)
