require 'acceptance/acceptance_helper'

feature 'Login', %q{
  Given that I want to protect the products from not logged users
  When click in 'New product'
  Then I should be redirected to login form
} do

  fixtures :users

  scenario 'Should show login page when clicking new product link' do
    visit '/'
    click_link_or_button 'New Product'
    
    current_path.should == '/login'
    page.should have_content 'Log in'
    page.should have_content 'login required'
  end

  scenario 'Should get logged in if I introduce valid credentials' do
    visit '/login'

    page.should have_content 'Log in'
    fill_in 'Email', with: 'hello@madridrb.com'
    fill_in 'Password', with: 'wadus'
    click 'Login'

    current_path.should == '/'
    page.should have_content 'Hello hello@madridrb.com'
    page.should have_content 'Logout'
  end

  scenario 'Should not get logged in if I introduce invalid credentials' do
    visit '/login'

    fill_in 'Email', with: 'goodbye@madridrb.com'
    fill_in 'Password', with: 'wadus'
    click 'Login'

    page.should have_content 'Invalid email or password'
    
    current_path.should == login_page
  end

end
