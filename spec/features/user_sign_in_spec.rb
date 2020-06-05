require 'rails_helper'

describe 'the sign in process' do
  it "shows an error message when sign in fails" do
    visit 'signup'
    fill_in 'user[email]', :with => 'testing@test.com'
    fill_in 'user[password]', :with => 'password'
    fill_in 'user[password_confirmation]', :with => 'password'
    click_on 'Sign Up'
    click_on 'Sign out'
    visit 'signin'
    fill_in 'email', :with => 'testing@test.com'
    fill_in 'password', :with => 'passwrd'
    within("form") do
      click_on 'Sign in'
    end
    expect(page).to have_content 'There was a problem signing in. Please try again'
  end
end