require_relative "./desserts.rb"
require_relative "./bakery.rb"
require_relative "./ingredients.rb"
require "pry"


cinnamon =Ingredient.new("cinnamon",5)
chocolate =Ingredient.new("chocolate",50)
milk =Ingredient.new("milk",30)
flour =Ingredient.new("flour",20)
eggs =Ingredient.new("eggs",80)
chocolate_chips =Ingredient.new("chocolate chips",10)

cookie = Dessert.new("cookie")  #60
cookie.add_ingredient(milk)
cookie.add_ingredient(flour)
cookie.add_ingredient(chocolate_chips)

pancakes = Dessert.new("pancakes")
pancakes.add_ingredient(milk)
pancakes.add_ingredient(flour)
pancakes.add_ingredient(chocolate_chips)
pancakes.add_ingredient(eggs)
pancakes.add_ingredient(cinnamon)


marylene_bakery = Bakery.new("marylene")
marylene_bakery.add_to_menu(pancakes)
marylene_bakery.add_to_menu(cookie)

puts cookie.ingredients

binding.pry
