require 'rails_helper'

describe "the add product proccess" do
  it "adds a new product" do
    admin = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", admin: true) 
    visit 'signin'
    fill_in 'email', :with => 'admin@test.com'
    fill_in 'password', :with => 'password'
    within("form") do
      click_on 'Sign in'
    end
    visit products_path
    click_link 'Create a product'
    fill_in 'Name', :with => 'test'
    fill_in 'Cost', :with => '5'
    fill_in 'Country of origin', :with => 'china'
    click_on 'Create Product'
    expect(page).to have_content 'Test'
  end
  it "shows an error message when params are not validated" do
    admin = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", admin: true) 
    visit 'signin'
    fill_in 'email', :with => 'admin@test.com'
    fill_in 'password', :with => 'password'
    within("form") do
      click_on 'Sign in'
    end
    visit products_path
    click_link 'Create a product'
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => ''
    fill_in 'Country of origin', :with => ''
    click_on 'Create Product'
    expect(page).to have_content 'Please fix these errors'
  end
end
