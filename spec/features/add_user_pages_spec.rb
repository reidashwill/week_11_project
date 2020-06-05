require 'rails_helper'

describe "the add user proccess" do
  it "adds a new user" do
    visit 'signup'
    
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content "You've successfully signed up"
  end
end

