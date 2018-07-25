# #### Ingredients
#   - #dessert
#     - should return a dessert object for that ingredient
#   - #bakery
#     - should return the bakery object for the bakery that uses that ingredient
#   - .all
#     - should return an array of all ingredients
#   - .find_all_by_name(ingredient)
#     - should take a string argument return an array of all ingredients that include that string in their name
#       - .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
#       - make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')

class Ingredient
  attr_reader :name, :calories
  @@all =[]
  def initialize(name, calories)
    @name = name
    @calories = calories
    @@all<<self
  end

  def self.find_all_by_name(ingredient_name)
    desired_instances = @@all.select do |ingredient|
      ingredient.name.include?(ingredient_name)
    end
    desired_instances.map do |ingredient|
      ingredient.name
    end
  end

  def dessert
    Dessert.all.select do |dessert|
      dessert.ingredients.include?(self)
    end
  end

  def self.all
    @@all
  end
end
