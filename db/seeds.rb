# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating ingredients...'

3.times do
  Ingredient.create!(
    name: Faker::Food.fruits
  )
end

puts 'Creating fruits completed...'

3.times do
  Ingredient.create!(
    name: Faker::Food.spice
  )
end

puts 'Creating spice completed...'

3.times do
  Ingredient.create!(
    name: Faker::Food.vegetables
  )
end

puts 'Creating vegetables completed...'

3.times do
  Ingredient.create!(
    name: Faker::Dessert.topping
  )
end
puts 'Creating topping completed...'

3.times do
  Ingredient.create!(
    name: Faker::Dessert.flavor
  )
end

puts 'Creating flavor completed...'

Ingredient.create!(name: 'Gin')
Ingredient.create!(name: 'Vodka')
Ingredient.create!(name: 'Soda')
Ingredient.create!(name: 'Tonic')
Ingredient.create!(name: 'Lime')
Ingredient.create!(name: 'Ginger Ale')
Ingredient.create!(name: 'Sake')
Ingredient.create!(name: 'Whisky')
Ingredient.create!(name: 'Brandy')
Ingredient.create!(name: 'Absinthe')
Ingredient.create!(name: 'Mezcal')
Ingredient.create!(name: 'TequilaS')

puts 'Finished!'
