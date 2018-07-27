# ### `User`
# Build the following methods on the User class
#
# - `User.all`
# should return all of the user instances
# - `User#recipes`
# should return all of the recipes this user has recipe cards for
# - `User#add_recipe_card`
# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
# - `User#declare_allergen`
# should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
# - `User#allergens`
# should return all of the ingredients this user is allergic to
# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.
# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.
class User

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating = 0, user)
    # creates instance of new RecipeCard
    RecipeCard.new(recipe, date, rating, self)
  end

# should return all of the recipes this user has recipe cards for
  # recipecards
  def recipecards
    RecipeCard.all.select do | card |
      card.user == self
    end
  end

  def recipes
    recipecards.map do | recipes |
      recipes.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do | allergy |
      allergy.user == self
    end
  end


  def top_three_recipes
    # recipe is the object
    # find all the recipecards (link btw user and recipe) that belong to this user via recipes method above
    top_recipes =
    # on each iteration sort by what's called in the block
    # reverse! order is from 1..2..3 want 10..9..8...
    recipecards.sort_by do | recipe |
      # take the recipe rating
      recipe.rating
    end.reverse
    # give me first 3 elements in array
    top_recipes[0..2]
  end

  def most_recent_recipe
    recent_recipes =
    recipecards.sort_by do | recipe |
      recipe.rating
    end.reverse
    recent_recipes[0]
  end

end
