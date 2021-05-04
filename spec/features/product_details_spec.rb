# require 'rails_helper'

# RSpec.feature "Visitor can navigate to product page by clicking on a product", type: :feature, js: true do

#   # SETUP
#   before :each do
#     @category = Category.create! name: 'Apparel'

#     10.times do |n|
#       @category.products.create!(
#         name:  Faker::Hipster.sentence(3),
#         description: Faker::Hipster.paragraph(4),
#         image: open_asset('apparel1.jpg'),
#         quantity: 10,
#         price: 64.99
#       )
#     end
#     visit root_path
#   end

#   scenario "Visit the homepage, click on a product, and visit the product" do
#         # DEBUG
#         save_screenshot 'Pre_click_on_product.png'

#         # find('.product', match: :first).click
#         click_on("Details", match: :first)
#         sleep 1
#         # VERIFY
#         expect(page).to have_css 'section.products-show'

#         save_screenshot 'On_click_on_product.png'
           
#       end
#     end
