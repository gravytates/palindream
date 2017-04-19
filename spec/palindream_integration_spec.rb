require('capybara/rspec')
require('./app')
Capybara.app=Sinatra::Application
set(:show_exceptions, false)

describe('the palindrome case path', {:type => :feature}) do
  it('processes the user entry to evaluate if it is a palindrome') do
    visit('/')
    fill_in('input', :with => 'Lepers repel!')
    click_button('Dream')
    expect(page).to have_content('is a palindrome')
  end
end
