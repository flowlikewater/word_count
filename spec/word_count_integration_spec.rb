require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the word count path', {:type => :feature}) do
    it('processes the user entry sentence and returns the number of occurence of a chosen word') do
      visit('/')
      fill_in('sentence', :with => 'I am happy, i like fruits')
      fill_in('word', :with => 'I')
      click_button('Send')
      expect(page).to have_content("The word \"I\" appeared 2 times The word \"I\" appeared 6 times in comprehensive mode")
    end
  end
