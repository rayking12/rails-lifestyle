require 'rails_helper'

RSpec.feature 'Articles', type: :system do
  describe 'add a new article' do
    before do
      Category.create(name: 'Movies', priority: 1)
      User.create(username: 'king', name: 'Gui')
    end
    it 'creates a user' do
      visit signup_path
      fill_in 'name', with: 'king'
      fill_in 'username', with: 'king'
      click_on 'submit'
    end

    it 'logs in and creates an article' do
      visit login_path
      fill_in 'username', with: 'king'
      click_on 'submit'
      click_link('New Article')
      expect(page).to have_content('New Article')
    end
    it 'creates an article' do
      fill_in('article[title]', with: 'Harry Potter')
      sleep(2)
      fill_in('article[body]', with: 'Cool new Harry Potter book')
      sleep(2)
      find('form input[type="file"]').set('./public/vetromovies.png')
      sleep(2)
      click_button('Create Article')
      sleep(2)

      expect(page).to have_content('Cool new Harry Potter book')
    end
  end
end
