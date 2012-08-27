require 'acceptance/acceptance_helper'

feature 'Login', %q{
  Given that I want to protect the products from not logged users
  When click in "New product"
  Then I should be redirected to login form
} do

  scenario 'Should show login page when clicking new product link' do
    visit '/'
    click_link_or_button 'New Product'
    
    current_path.should == '/login'
    page.should have_content 'Log in'
  end

  scenario 'Should get logged in if I introduce valid credentials'

  scenario 'Should get logged in if I introduce invalid credentials'

end
