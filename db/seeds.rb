# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


trouble1 = Trouble.create!(name: "Chimiothérapie")
# test pour recipes dans index et show
recipes1 = Recipe.create(sku: 'Soupe à la patate douce', name: "Soupe de patate douce", description: "Une savoureuse soupe à la patate douce", price: 7.00, photo_url: "https://static.cuisineaz.com/400x320/i135820-soupe-a-la-patate-douce.jpeg")
recipes2 = Recipe.create(sku: 'Saumon aux asperges', name: "Saumon aux asperges", description: "Le saumon aux asperges de ma grand mère", price: 15.50, photo_url: "https://storenotrefamilleprod.blob.core.windows.net/images/cms/recette/33518/33518_large.jpg")
recipes3 = Recipe.create(sku: 'Poulet au brocolis', name: "Poulet au brocolis", description: "Le poulet au brocolis, tout simplement délicieux !", price: 12, photo_url: "https://assets.kraftfoods.com/recipe_images/181573-181574.jpg")
recipes4 = Recipe.create(sku: 'Dos de cabillaud - chou fleur', name: "Dos de cabillaud, chorizo et chou-fleur rôti", description: "Un cabillaud fondant, de délicats pétales de chorizo et du chou-fleur rôti", price: 18.80, photo_url: "https://couteaux-et-tirebouchons.com/wp-content/uploads/2017/02/Cabillaud-au-chorizo.jpg")
recipes5 = Recipe.create(sku: 'Crevettes au curry', name: "Crevettes au curry", description: "De délicieuses crevettes au curry", price: 13.5, photo_url: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/vimdb/239755.jpg")
