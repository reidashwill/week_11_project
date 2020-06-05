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
  it "shows detail page for review when clicked on" do
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
    fill_in 'Content body', :with => 'dakslfjdladsgdsgsfasfagfdfdsgsfgsgsdgfdsdfgfsgfdasfasdfasfasdfsdf'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    click_on 'godfrey'
    expect(page).to have_content 'godfrey'
  end
  
  it "shows detail page for review when clicked on" do
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
    fill_in 'Content body', :with => 'dakslfjdladsgdsgsfasfagfdfdsgsfgsgsdgfdsdfgfsgfdasfasdfasfasdfsdf'
    fill_in 'Rating', :with => '5'
    click_on 'Create Review'
    visit '/reviews'
    expect(page).to have_content 'godfrey'
  end
  it "show error message when a non user tries to create a review" do
    Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
    visit products_path
    click_link 'Sharks'
    click_link 'Add a review'
    expect(page).to have_content "You aren't authorized to visit that page."
  end

end