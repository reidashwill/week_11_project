require 'rails_helper'

describe "the add product proccess" do
  it "adds a new product" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    visit 'signup'
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_on 'Sign Up'
    visit products_path
    click_link 'Sharks'
    click_link 'Add a review'
    fill_in 'Author', :with => 'godfrey'
    fill_in 'Content body', :with => 'dakslfjdladsjfljasdflkjdaslkfjlasdkjflksadjfkljdsalfkjasdalsdkjf'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'godfrey'
  end
  it "reloads page with error message when params are not validated" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    visit 'signup'
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_on 'Sign Up'
    visit products_path
    click_link 'Sharks'
    click_link 'Add a review'
    fill_in 'Author', :with => 'godfrey'
    fill_in 'Content body', :with => 'dakslfjdlads'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    expect(page).to have_content 'Content body is too short'
  end
end