#### Bakery
# - #ingredients
#   - should return an array of ingredients for the bakery's desserts
# - #desserts
#   - should return an array of desserts the bakery makes
# - #average_calories
#   - should return a number totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
# - #shopping_list
#   - should return a string of names for ingredients for the bakery
class Bakery
  @@all = []
  attr_reader :desserts, :name

  def initialize(name)
    @name = name
    @desserts =[]
    @@all << self
  end

  def add_to_menu(dessert)
    @desserts << dessert
  end

  def ingredients
    (@desserts.map do |dessert|
      dessert.ingredients
    end).flatten
  end

  def shopping_list
    (ingredients.map do |ingredient|
      ingredient.name
    end).join(", ")
  end

  def average_calories
    array= @desserts.map do |dessert|
      dessert.calories
    end
    array.inject{ |sum, el| sum + el }.to_f / array.size
  end

  def self.all
    @@all
  end

end
