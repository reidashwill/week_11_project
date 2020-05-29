require 'rails_helper'

describe "the edit a product proccess" do
  it "edits a product do" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    visit products_path
    click_link 'Sharks'
    click_link 'edit this product'
    fill_in 'Name', :with => 'godfrey'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'merica'
    click_on 'Update Product'
    expect(page).to have_content 'Godfrey'
  end
end