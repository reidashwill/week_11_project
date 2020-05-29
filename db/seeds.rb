# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |product|
  product = Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.number(digits: 2), country_of_origin: Faker::Address.country)

  10.times do |review|
    Review.create!(author: Faker::Name.first_name, content_body: Faker::Lorem.paragraph_by_chars(number: 75, supplemental: false), rating: Faker::Number.between(from: 1, to: 5), product_id: product.id )
  end
end
p "Created #{Product.count} products and #{Review.count} reviews"