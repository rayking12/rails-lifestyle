require 'rails_helper'

RSpec.feature 'Users', type: :system do
  describe 'Navigate the webpage' do
    it 'creates a new user and logs in' do
      visit signup_path
      fill_in 'name', with: 'Gui2'
      fill_in 'username', with: 'Gui2'
      click_on 'submit'
      expect(page).to have_content('')
    end

    it 'does not login user with blank username' do
      visit login_path
      fill_in 'username', with: ' '
      click_on 'submit'
      expect(page).to have_content('Username not found')
    end

    it 'does not login user with invalid username' do
      visit login_path
      fill_in 'username', with: 'Norah'
      click_on 'submit'
      expect(page).to have_content('Username not found')
    end
  end
end
