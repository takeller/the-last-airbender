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

    it 'I see detailed information for each member' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_on 'Search For Members'

      expect(current_path). to eq('/search')

      within(first('.member')) do
        expect(page).to have_css('.name')
        expect(page).to have_css('.allies')
        expect(page).to have_css('.enemies')
        expect(page).to have_css('.affiliations')
      end
    end
  end
end
