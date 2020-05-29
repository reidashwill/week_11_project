require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
end

describe Product do
  it("titleizes the name of a product") do
    product = Product.create({name: "stuff", cost: 6, country_of_origin: "China"})
    expect(product.name()).to(eq("Stuff"))
  end
end