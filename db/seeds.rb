Product.destroy_all

50.times do |product|
  product = Product.create!(name: Faker::Food.ingredient, cost: Faker::Number.number(digits: 2), country_of_origin: Faker::Address.country)

  5.times do |review|
    Review.create!(author: Faker::TvShows::StarTrek.character, content_body: Faker::Lorem.paragraph_by_chars(number: 75, supplemental: false), rating: Faker::Number.between(from: 1, to: 5), product_id: product.id )
  end
end
p "Created #{Product.count} products and #{Review.count} reviews"