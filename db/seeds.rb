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

impact_chimio = "L’alimentation d’une personne traitée pour un cancer peut être considérablement transformée. Ces troubles peuvent être liés au cancer lui-même et à sa localisation, aux effets secondaires des traitements, mais aussi au stress et aux changements de rythme de vie. Parfois douloureux, ils peuvent causer des difficultés pour consommer les aliments et affecter considérablement le quotidien des patients. Ces modifications peuvent avoir un impact sur l’état général du patient, tant physique que psychologique."
conseils_chimio = "Masquer le goût de la viande - Adoucir les légumes - Consommer des laitages - Limiter la viande rouge au profit d’autres sources protéiniques - Éviter le sel - Préférer les aliments forts en goût - Rehausser les saveurs en utilisant les herbes aromatiques, les épices et autres aromates - Utiliser les épices et les condiments - Privilégier les aliments froids - Éviter de mélanger les aliments - Consommer des chewing-gums ou des bonbons mentholés - Se rincer régulièrement la bouche"

impact_digestion = "La digestion peut entrainer plusieurs problèmes comme des brûlures d'estomac (sensation de brûlure qui peut irradier du ventre à la gorge), la diarrhée (irritation ou inflammation de la muqueuse intestinale qui se caractérise par de fréquentes selles liquide) ou des ballonnements (accumulation de gaz dans les intestins). Cela peut venir du stress, de l'aérophagie, des colites, d'intolérances alimentaires...  "
conseils_digestion = "Pour les brûlures d'estomac, limitez les aliments qui favorisent les sensations de brûlures et les plats gras. Pour la diarrhée, buvez beaucoup d'eau et privilégiez les aliments faciles à digérer "

impact_deglutition = "Les traitements peuvent avoir un impact sur les muqueuses et la production de salive. Les tumeurs O.R.L. peuvent provoquer des douleurs qui engendrent des difficultés de mastication et de déglutition. De même, la radiothérapie ciblée entre le cou et la tête peut entraîner une diminution de la production de salive. La réduction de salive augmente les difficultés à avaler les aliments. "
conseils_deglutition = "Éviter d'utiliser des liquides pour avaler des aliments solides - Privilégier l'eau gazeuse à l’eau plate - Favoriser les aliments chauds ou glacés - Choisir des plats onctueux - Supprimer les aliments en grain ou friables - Éviter d'utiliser des liquides pour avaler des aliments solides."

trouble1 = Trouble.create!(name: "Chimiothérapie", impact: impact_chimio, conseils: conseils_chimio )
trouble2 = Trouble.create!(name: "Digestion", impact: impact_digestion, conseils: conseils_digestion)
trouble3 = Trouble.create!(name: "Déglution", impact: impact_deglutition, conseils: conseils_deglutition)
# test pour recipes dans index et show

description_soupe = "Une savoureuse soupe à la patate douce, qui vous apportera douceur et chaleur. "
apport_soupe = "Riches en fibre, la patate douce va pouvoir régulariser la fonction gastro-intestinale. Elle protège contre les infections, et diminue les risques de cancer grâce aux anthocyanes, de puissants antioxydants, qu'elle contient. La soupe permet de mieux déglutir cet aliment."
recipes1 = Recipe.create(sku: 'Soupe à la patate douce', name: "Soupe de patate douce", description: description_soupe, apport: apport_soupe, price: 7.00, photo_url: "https://static.cuisineaz.com/400x320/i135820-soupe-a-la-patate-douce.jpeg")

description_saumon = "Le saumon aux asperges de ma grand mère"
apport_saumon = "Le saumon diminue le risque de maladies cardiovasculaires et de mortalité par maladie coronarienne. Le saumon possède des vitamines D qui est associée à la santé osseuse, à la prévention de certains types de cancer dont le cancer colorectal et celui du sein."
recipes2 = Recipe.create(sku: 'Saumon aux asperges', name: "Saumon aux asperges", description: description_saumon , apport: apport_saumon, price: 15.50, photo_url: "https://storenotrefamilleprod.blob.core.windows.net/images/cms/recette/33518/33518_large.jpg")

recipes3 = Recipe.create(sku: 'Poulet au brocolis', name: "Poulet aux brocolis", description: description_poulet, apport: apport_poulet, price: 12, photo_url: "https://assets.kraftfoods.com/recipe_images/181573-181574.jpg")
description_poulet = "Le poulet au brocolis, tout simplement délicieux !"
apport_poulet = "Le poulet possède des vitamines B3, B5, B6 et B12. Il possède des minéraux tels que le zinc, qui permet la prévention de maladies cardiovasculaires et de certains cancers.
La consommation de chou-fleur pourrait prévenir certains cancers, tels que ceux du poumon, des ovaires et des reins."

description_cabillaud = "Un cabillaud fondant, de délicats pétales de chorizo et du chou-fleur rôti. Une recette saine et délicieuse."
apport_cabillaud = "Le cabillaud possède plusieurs acides gras qui agissent comme précurseurs de messagers chimiques favorisant un bon fonctionnement des systèmes immunitaire, circulatoire et hormonal."
recipes4 = Recipe.create(sku: 'Dos de cabillaud - chou fleur', name: "Dos de cabillaud, chorizo et chou-fleur rôti", description: description_cabillaud, apport: apport_cabillaud , price: 18.80, photo_url: "https://couteaux-et-tirebouchons.com/wp-content/uploads/2017/02/Cabillaud-au-chorizo.jpg")

description_crevettes = "De délicieuses crevettes au curry, accompagnées de riz"
apport_crevettes = "La cardamome que l'on retrouve dans la plupart des curry va permettre de diminuer les spasmes de l'estomac et ainsi limiter les nausées et vomissements. Le magnésium présent en quantité notable dans le curry va permettre d'aider au fonctionnement des muscles, des nerfs mais aussi des intestins"
recipes5 = Recipe.create(sku: 'Crevettes au curry', name: "Crevettes au curry", description: description_crevettes, apport: apport_crevettes , price: 13.5, photo_url: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/vimdb/239755.jpg")

description_crousti = "Bâtonnets croustillants de poulet et sauce aux épices douces. Une recette qui permet de manger de la viande de façon ludique et détournée : le poulet est dissimulé sous la panure et son goût masqué par les épices douces."
apport_crousti = "Les épices viennent enrober le goût du poulet et masquer celui-ci. Elles permettent de conserver le plus longtemps possible une alimentation riche en protéines animales, nécessaires pour conserver une alimentation équilibrée. Les corn-flakes enrobent le poulet et permettent de dissimuler la viande."
recipes6 = Recipe.create(sku: "Bâtonnets croustillants de poulet", name: "Bâtonnets croustillants de poulet", description: description_crousti, apport: apport_crousti, price: 11.5, photo_url: "https://www.mieuxdansmonassietteaveclecancer.fr/wp-content/uploads/2016/07/Poulet.jpg")

description_patate = "Gnocchis de pomme de terre et sa garniture de courge. La courge peut être remplacée par un potiron, un potimarron ou toute autre cucurbitacée. Ajoutez des herbes mixées pour parfumer vos gnocchis."
apport_patate = "Ce légume considéré comme un féculent possède des propriétés anti-diarrhéiques favorables pour le transit et se révèle particulièrement intéressant dans le cadre d’une préparation alimentaire. Ce féculent peut densifier l’alimentation et apporter un effet nutritif permettant de favoriser une alimentation « utile »."
recipes7 = Recipe.create(sku: "Gnocchis de pomme de terre", name: "Gnocchis de pomme de terre", description: description_patate, apport: apport_patate, price: 14.5, photo_url: "https://www.mieuxdansmonassietteaveclecancer.fr/wp-content/uploads/2016/07/Gnocchi.jpg")

description_taboule = "Le taboulé se prépare à l’avance et se consomme froid à la demande, lorsque la faim se présente. Il ne nécessite pas de cuisson et ne dégage pas d’odeur. Vous pouvez jouer sur les herbes en rajoutant de la menthe ou du cerfeuil par exemple."
apport_taboule = "Persil, coriandre, menthe… Ces herbes et plantes aromatiques apportent une fraîcheur particulièrement apaisante dans le cadre de nausées et vomissements. De plus, ces produits froids sans cuisson répondent à une alimentation fraîche et modifiable selon ses goûts et envies. Vous pourrez manger votre taboulé dès que vous en aurez envie, ne pas le cuisiner ne vous fera pas passer l'appétit."
recipes8 = Recipe.create(sku: "Taboulé libanais", name: "Taboulé libanais", description: description_taboule, apport: apport_taboule, price: 8, photo_url: "https://www.mieuxdansmonassietteaveclecancer.fr/wp-content/uploads/2016/07/Taboule-630x380.jpg")

description_mozza = "Cake saumon mozzarella, au zeste de citron et à la poudre d'amandes."
apport_mozza = "Les amandes sont riches en acides gras, protéines végétales, vitamines, minéraux. Elles ajoutent du goût à la préparation et augmentent sa valeur calorique. Elles peuvent être remplacées par de la poudre de noisette afin de varier le goût. Elles peuvent être utilisées plus ou moins broyées et en plus ou moins grande quantité, de façon à modifier l’intensité du goût et la valeur calorique du plat."
recipes9 = Recipe.create(sku: "Cake saumon mozzarella", name: "Cake saumon mozzarella", description: description_mozza, apport: apport_mozza, price: 7.5, photo_url: "https://www.mieuxdansmonassietteaveclecancer.fr/wp-content/uploads/2016/06/Cake.jpg")



TroubleRecipe.create(recipe_id: recipes6.id, trouble_id: trouble1.id)
TroubleRecipe.create(recipe_id: recipes7.id, trouble_id: trouble1.id)
TroubleRecipe.create(recipe_id: recipes8.id, trouble_id: trouble1.id)
TroubleRecipe.create(recipe_id: recipes9.id, trouble_id: trouble1.id)

TroubleRecipe.create(recipe_id: recipes2.id, trouble_id: trouble2.id)
TroubleRecipe.create(recipe_id: recipes3.id, trouble_id: trouble2.id)
TroubleRecipe.create(recipe_id: recipes4.id, trouble_id: trouble2.id)

TroubleRecipe.create(recipe_id: recipes1.id, trouble_id: trouble3.id)
TroubleRecipe.create(recipe_id: recipes5.id, trouble_id: trouble2.id)

