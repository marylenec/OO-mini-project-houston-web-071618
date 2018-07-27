require_relative '../config/environment.rb'

marylene = User.new("marylene")
erica = User.new("erica")
cindy = User.new("cindy")

choc_mousse = Recipe.new("chocolate_mouse")
chicken_parm = Recipe.new("chicken_parm")
seafood_pasta = Recipe.new("seafood_pasta")
pbj_sandwich = Recipe.new("pbj")



# recipecards
marylene.add_recipe_card(choc_mousse, 0, 10, marylene)
marylene.add_recipe_card(seafood_pasta, 0, 3, marylene)
marylene.add_recipe_card(chicken_parm, 0, 8, marylene)
marylene.add_recipe_card(pbj_sandwich, 0, 5, marylene)
cindy.add_recipe_card(chicken_parm, 0, 9, cindy)
cindy.add_recipe_card(pbj_sandwich, 0, 7, cindy)
erica.add_recipe_card(pbj_sandwich, 0, 7, erica)
erica.add_recipe_card(seafood_pasta, 0, 9, erica)



# ingredients
peanut = Ingredient.new("peanut")
jelly = Ingredient.new("jelly")
bread = Ingredient.new("bread")
fish = Ingredient.new("fish")
pasta = Ingredient.new("pasta")


pbj_array = [peanut,jelly,bread]
seafood_array = [fish, pasta]

# allergen
marylene.declare_allergen(fish)
marylene.declare_allergen(peanut)
erica.declare_allergen(fish)
cindy.declare_allergen(peanut)


pbj_sandwich.add_ingredients(pbj_array)
seafood_pasta.add_ingredients(seafood_array)
pbj_sandwich.users
Recipe.most_recipe_cards
# Ingredient.most_common_allergen

pry.start
