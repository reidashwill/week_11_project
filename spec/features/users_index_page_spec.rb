require 'rails_helper'

describe "page that shows list of current users" do
  it "shows all current users" do
    admin = User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", admin: true) 
    visit 'signin'
    fill_in 'email', :with => 'admin@test.com'
    fill_in 'password', :with => 'password'
    within("form") do
      click_on 'Sign in'
    end
    visit '/users'
    
    expect(page).to have_content 'admin@test.com'
  end
end