require 'rails_helper'

describe "the add product proccess" do
  it "adds a new product" do
    admin = User.new({:email => "admin@test.com"})
    admin.encrypt_password
    admin.admin = true
    admin.save
    visit products_path
    save_and_open_page
    click_link 'Create a product'
    fill_in 'Name', :with => 'test'
    fill_in 'Cost', :with => '5'
    fill_in 'Country of origin', :with => 'china'
    click_on 'Create Product'
    expect(page).to have_content 'Test'
  end
end