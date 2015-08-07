require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the process of finding out how frequently a word was used', {:type => :feature}) do
  it("processes the user entry sentence and user entry word and checks the word's frequency in the sentence") do
    visit('/')
    fill_in('sentence', :with => "If Peter Piper picked a peck of pickled peppers, where's the peck of pickled peppers Peter Piper picked?")
    fill_in('word'), :with => "peck"
    click_button('submit')
    expect(page).to have_content(2)
  end
end
