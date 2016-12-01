require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the address book path', {:type => :feature}) do
  it('displays the links to see contact list and add a contact') do
    visit('/')
    click_link('See Contact List')
    expect(page).to have_content('Contacts')
  end
end
