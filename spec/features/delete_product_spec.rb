require 'rails_helper'

describe "the delete a product proccess" do
  it "deletes a product do" do
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
    click_on 'Delete this product'
    expect(page).to have_no_content 'Sharks'
  end
end