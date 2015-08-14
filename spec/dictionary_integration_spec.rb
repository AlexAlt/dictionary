require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the homepage page path', {:type => :feature}) do
  it('allows user to add a new word') do
    visit('/')
    fill_in('new_word', :with => "red")
    click_button('Add')
    expect(page).to have_content("red")
  end
end

describe('the path to a specific word', {:type => :feature}) do
  it('shows the definitions for a specific word') do
    visit('/word_list')
    click_link("red")
    expect(page).to have_content("red")
  end
end

describe('the path to a definition form', {:type => :feature}) do
  it('creates form to add a new definition') do
    visit('/word/:id')
    click_link('Add a definition')
    expect(page).to have_content("Add a new definition to your word:")
  end
end