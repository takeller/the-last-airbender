require 'rails_helper'

describe 'As a visitor' do
  describe 'When I visit the welcome page' do
    it 'I can search for fire nation members' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_on 'Search For Members'

      expect(current_path). to eq('/search')
      expect(page).to have_css('.member', count: 20)
    end
  end
end
