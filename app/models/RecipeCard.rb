# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:
#
# - `RecipeCard.all`
# should return all of the RecipeCard instances
# - `RecipeCard#date`
# should return the date of the entry
# - `RecipeCard#rating`
# should return the rating (an integer) a user has given their entry
# - `RecipeCard#user`
# should return the user to which the entry belongs
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs

class RecipeCard

attr_reader :user, :recipe, :date
attr_accessor :rating

@@all = []
# def initialize(recipe, date = 0, rating = 0, user)
def initialize(recipe, date, rating = 0, user)

  # date is a int
  @date = Time.now
  @user = user
  @recipe = recipe
  @@all << self
end

def self.all
  @@all
end

def date
end
# should return the date of the entry

def rating
end
# should return the rating (an integer) a user has given their entry

def user
end
# should return the user to which the entry belongs

def recipe
end
# should return the recipe to which the entry belongs

end
