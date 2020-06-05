require 'rails_helper'

describe "the edit a product proccess" do
  it "edits a product do" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    admin = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", admin: true) 
    visit 'signin'
    fill_in 'email', :with => 'admin@test.com'
    fill_in 'password', :with => 'password'
    within("form") do
      click_on 'Sign in'
    end
    visit products_path
    click_link 'Sharks'
    click_link 'Edit this product'
    fill_in 'Name', :with => 'godfrey'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => 'merica'
    click_on 'Update Product'
    expect(page).to have_content 'Godfrey'
  end
  it "shows error message when params are not validated" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    admin = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", admin: true) 
    visit 'signin'
    fill_in 'email', :with => 'admin@test.com'
    fill_in 'password', :with => 'password'
    within("form") do
      click_on 'Sign in'
    end
    visit products_path
    click_link 'Sharks'
    click_link 'Edit this product'
    fill_in 'Name', :with => 'godfrey'
    fill_in 'Cost', :with => '3'
    fill_in 'Country of origin', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'Please fix these errors'
  end
end