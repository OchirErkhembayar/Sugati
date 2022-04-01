# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Product.destroy_all

puts "creating 10 products"

10.times do
  p = Product.create(
    name: Faker::Commerce.unique.product_name,
    price: 10,
    description: Faker::Hipster.sentence(rand(3..6))
  )
  puts "created #{p.name}"
end

puts "10 products created"
