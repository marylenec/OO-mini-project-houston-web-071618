# ### `Ingredient`
# Build the following methods on the Ingredient class
#
# - `Ingredient.all`
# should return all of the ingredient instances
# - `Ingredient.most_common_allergen`
# should return the ingredient instance that the highest number of users are allergic to
class Ingredient

  attr_reader :name
  attr_accessor :allergen
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # select all the allergens that belong to this ingredient

  # how does ingredient know its an allergen?
  # !! forces it to hard true or false
  # ! not an object false
  # !! true
  def is_allergen?
    !!Allergen.all.find do | allergen |
      allergen.ingredient == self
    end
  end

  # def self.most_common_allergen
	# 	most_allergen = Hash.new(0)
	# 	Allergen.all.each do |allergy|
  #    most_allergen[allergy.ingredient.name] += 1
	# 	end
	# 	most_allergen.max_by{|k,v| v}
  # end

# end

# find allergens that belong to ingredient
  # def allergens
  #   Allergen.all.each do | allergy |
  #     allergy.ingredient == self
  #   end.size
  # end

# #   peanut.allergens
# # => [#<Allergen:0x007f7fe311f318
# #   @ingredient=#<Ingredient:0x007f7fe311f4f8 @ingredient="Peanut">,
# #   @user=#<User:0x007f7fe311fb38 @name="marylene">>,
# #  #<Allergen:0x007f7fe311f2f0
# #   @ingredient=#<Ingredient:0x007f7fe311f4f8 @ingredient="Peanut">,
# #   @user=#<User:0x007f7fe311fa98 @name="cindy">>]

# should return the ingredient instance that the highest number of users are allergic to
  # def self.most_common_allergen

  #   max_allergens_count = 0
  #   max_allergen_ingred = nil
  #   # allergy_obj is an instance of an allergen
  #   Allergen.all.each do | allergy_obj |
  #     if max_allergens_count == 0 || allergy_obj.length > max_allergens_count
  #     max_allergens_count = allergy_obj.length
  #     max_allergen_ingred = allergy_obj.ingredient
  #     end
  #   end
  #   max_allergen_ingred
  # end

  end
