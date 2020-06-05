# require 'rails_helper'

# describe "the add product proccess" do
#   it "adds a new product" do
#     Product.create!(name: "Sharks", cost: "5", country_of_origin: "China")
#     visit products_path
#     click_link 'Sharks'
#     click_link 'Add a review'
#     fill_in 'Author', :with => 'godfrey'
#     fill_in 'Content body', :with => 'dakslfjdladsjfljasdflkjdaslkfjlasdkjflksadjfkljdsalfkjasdalsdkjf'
#     fill_in 'Rating', :with => '5'
#     click_on 'Create Review'
#     expect(page).to have_content 'godfrey'
#   end
# end