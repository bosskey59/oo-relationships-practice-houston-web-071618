#### Desserts
  # - #ingredients
  #   - should return an array of ingredients for the dessert
  # - #bakery
  #   - should return the bakery object for the dessert
  # - #calories
  #   - should return a number totaling all the calories for all the ingredients included in that dessert
  # - .all
  #   - should return an array of all desserts
class Dessert
  @@all = []

  attr_reader :name, :ingredients

  def initialize(name)
    @name = name
    @@all << self
    @ingredients=[]
  end

  def add_ingredient(ingredient)
    self.ingredients << ingredient
  end

  def calories
    (@ingredients.map do |ingredient|
      ingredient.calories
    end).inject(0, &:+)
  end

  def bakery
    Bakery.all.select do |bakery|
      bakery.desserts.include?(self)
    end
  end

  def self.all
    @@all
  end



end
