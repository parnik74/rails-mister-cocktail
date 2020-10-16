require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

#Cocktail.create(name: "lemon" ingredients: "holy water", "watermelon seeds")
#Cocktail.create(name:'moscow mule')
data = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
        puts(JSON.parse(data))
drinks = JSON.parse(data)["drinks"]
drinks.each do |drink|
  
  Ingredient.create(name: drink["strIngredient1"])
end
