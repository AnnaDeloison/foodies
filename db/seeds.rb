# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TroubleRecipe.destroy_all
Trouble.destroy_all
Recipe.destroy_all

impact_chimio = "L’alimentation d’une personne traitée pour un cancer peut être considérablement transformée.
      Ces troubles peuvent être liés au cancer lui-même et à sa localisation, aux effets secondaires des traitements, mais aussi au stress et aux changements de rythme de vie. Parfois douloureux, ils peuvent causer des difficultés pour consommer les aliments et affecter considérablement le quotidien des patients. Ces modifications peuvent avoir un impact sur l’état général du patient, tant physique que psychologique."
conseils_chimio = "En cas de très faible appétit, chaque bouchée compte ! Préférez les petits volumes fortement caloriques comme les amandes, le jaune d’œuf, le gruyère. N’hésitez pas à enrichir l’apport calorique de vos aliments, par exemple en ajoutant du miel à une compote de pommes ou de la crème dans vos plats. Vous devez manger utile. Privilégiez les aliments et boissons riches en protéines et en calories. Pensez aux protéines végétales (céréales, cacahuètes, amandes, tofu...) qui vous seront utiles en cas de perte d’appétit et peuvent venir compenser les protéines animales."

impact_digestion = "Quand on a des problèmes..."
conseils_digestion = "Privilégier des aliments facile à digérer comme"

impact_deglutition = "pas réussir à manger"
conseils_déglutition = "Préférez des aliments hachés"

trouble1 = Trouble.create!(name: "Chimiothérapie", impact: impact_chimio, conseils: conseils_chimio )
trouble2 = Trouble.create!(name: "Digestion", impact: impact_digestion, conseils: conseils_digestion)
trouble3 = Trouble.create!(name: "Déglution", impact: impact_deglution, conseils: conseils_deglutition)
# test pour recipes dans index et show


recipes1 = Recipe.create(sku: 'Soupe à la patate douce', name: "Soupe de patate douce", description: description_soupe, apport: apport_soupe, price: 7.00, photo_url: "https://static.cuisineaz.com/400x320/i135820-soupe-a-la-patate-douce.jpeg")
description_soupe = "Une savoureuse soupe à la patate douce, qui vous apportera douceur et chaleur."
apport_soupe = "Riches en fibre, la patate douce va pouvoir régulariser la fonction gastro-intestinale. Elle protège contre les infections, et diminue les risques de cancer grâce aux anthocyanes, de puissants antioxydants, qu'elle contient."


recipes2 = Recipe.create(sku: 'Saumon aux asperges', name: "Saumon aux asperges", description: description_saumon , apport: apport_saumon, price: 15.50, photo_url: "https://storenotrefamilleprod.blob.core.windows.net/images/cms/recette/33518/33518_large.jpg")
description_saumon = "Le saumon aux asperges de ma grand mère"
apport_saumon = "Le saumon apporte"


recipes3 = Recipe.create(sku: 'Poulet au brocolis', name: "Poulet aux brocolis", description: description_poulet, apport: apport_poulet, price: 12, photo_url: "https://assets.kraftfoods.com/recipe_images/181573-181574.jpg")
description_poulet = "Le poulet au brocolis, tout simplement délicieux !"
apport_poulet = "Miam le poulet c'est délicieux"

recipes4 = Recipe.create(sku: 'Dos de cabillaud - chou fleur', name: "Dos de cabillaud, chorizo et chou-fleur rôti", description: description_cabillaud, apport: apport_cabillaud , price: 18.80, photo_url: "https://couteaux-et-tirebouchons.com/wp-content/uploads/2017/02/Cabillaud-au-chorizo.jpg")
description_cabillaud = "Un cabillaud fondant, de délicats pétales de chorizo et du chou-fleur rôti"
apport_cabillaud = "poisson blanc facile à faire"

recipes5 = Recipe.create(sku: 'Crevettes au curry', name: "Crevettes au curry", description: description_crevettes, apport: apport_crevettes , price: 13.5, photo_url: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/vimdb/239755.jpg")
description_crevettes = "De délicieuses crevettes au curry"
apport_crevettes = "curry miamiam"




TroubleRecipe.create(recipe_id: recipes1.id, trouble_id: trouble1.id)
TroubleRecipe.create(recipe_id: recipes2.id, trouble_id: trouble1.id)
TroubleRecipe.create(recipe_id: recipes3.id, trouble_id: trouble1.id)



