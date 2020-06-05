require 'rails_helper'

describe "the sign-in user proccess" do

  it "shows message on sign in" do
    visit 'signup'
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_on 'Sign Up'
    click_on 'Sign out'
    click_on 'Sign in'
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    click_on 'Sign in'
    expect(page).to have_content "You've signed in"
  end
  
end