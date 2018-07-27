# ### `Recipe`
# Build the following methods on the Recipe class
#
# - `Recipe.all`
# should return all of the recipe instances
# - `Recipe.most_popular`
# should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# - `Recipe#users`
# should return the user instances who have recipe cards with this recipe
# - `Recipe#ingredients`
# should return all of the ingredients in this recipe
# - `Recipe#allergens`
# should return all of the ingredients in this recipe that are allergens
# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
class Recipe

attr_reader :name

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # recipe_add_ingredient
  # new instance ofRI

  # all ingredients
  # map

  # an array of ingredients
  def add_ingredients(ingredient_array)
    # iterate through each in array and run the block to assign the self to each new RecipeIngredient instance
    ingredient_array.each do | ingredient |
    RecipeIngredient.new(ingredient,self)
    end
  end

  # find ingredients that belong to this recipe
  def ingredients
    recipe_ing_array = RecipeIngredient.all.select do | rec_ingredient_obj |
      rec_ingredient_obj.recipe == self
    end
    # returns array of RecipeIngredient objects that belong to this recipe
    recipe_ing_array.map do | rec_ingredient_obj |
    # still the rec ingredient object
      rec_ingredient_obj.ingredient
    end
  end
# array of ingredient
  def recipecards
    RecipeCard.all.select do | card |
 #      #<RecipeCard:0x007f9bb390a140
 # @date=2018-07-26 17:42:36 -0500,
 # @recipe=#<Recipe:0x007f9bb390a280 @name="chocolate_mouse">,
 # @user=#<User:0x007f9bb390a370 @name="marylene">>
      # binding.pry
      card.recipe == self
    end
  end

  # most recipe cards with count
  def self.most_recipe_cards
    # create hash to store recipecard and count
    most_recipe_cards = Hash.new(0)
    # card is instance of recipecard
    # get count of them
    RecipeCard.all.each do | card |
      most_recipe_cards[card.recipe] +=1
    end
    most_recipe_cards.max_by { |a, b| b }
  end

  # number of cards that defines most
  def recipecards_count
    recipecards.size
  end

  def self.most_popular
    most_recipes = 0
    @@all.each do | recipe |
      if most_recipes == 0 || recipe.recipecards_count > most_recipes.recipecards_count
        most_recipes = recipe
      end
    end
    most_recipes
  end

  # - `Recipe#users`
  # should return the user instances who have recipe cards with this recipe
  def users
    recipecards.map do | card |
      # binding.pry
 #      #<RecipeCard:0x007fc76599cb98
 # @date=2018-07-26 17:41:43 -0500,
 # @recipe=#<Recipe:0x007fc76599cdf0 @name="pbj">,
 # @user=#<User:0x007fc76599cf58 @name="cindy">>
      card.user.name
    end
  end

  # Recipe#allergens`
  # # should return all of the ingredients in this recipe that are allergens
  # pbj.allergens => peanut

  # array of ingredient
  def allergens
    # select ingredients for this recipe
    # select all allergens

    ingredients.select do | ingredient |
      ingredient.is_allergen?
    end

    # ing_that_are_allergen_array = Allergen.all.map do | allergen_obj |
    #   allergen_obj.ingredient
    # end

    # iterate through ing array
    # desired_ing = []
    # ingredients.each do | ingredient_obj |
    #   ing_that_are_allergen_array.each do | aller_ing_obj |
    #     if aller_ing_obj == ingredient_obj
    #       desired_ing << ingredient_obj
    #     end
    #     desired_ing
    # end

    # recipe => ? => allergen => ingredient
    # returns peanut and seafood
end


end
