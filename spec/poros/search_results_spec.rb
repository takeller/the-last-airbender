require 'rails_helper'

describe SearchResults do
  describe 'Instance methods' do
    # it '#format_nation_input' do
    #   search_results = SearchResults.new
    #   fire_nation = 'fire_nation'
    #   earth_kingdom = 'earth_kingdom'
    #   air_nomads = 'air_nomads'
    #   water_tribes = 'water_tribes'
    #   formatted_fire_nation = search_results.format_nation_input(fire_nation)
    #   formatted_earth_kingdom = search_results.format_nation_input(earth_kingdom)
    #   formatted_air_nomads = search_results.format_nation_input(air_nomads)
    #   formatted_water_tribes = search_results.format_nation_input(water_tribes)
    #
    #   expect(formatted_fire_nation).to eq('fire+nation')
    #   expect(formatted_earth_kingdom).to eq('earth+kingdom')
    #   expect(formatted_air_nomads).to eq('air+nomads')
    #   expect(formatted_water_tribes).to eq('water+tribe')
    # end

    it '#members' do
      search_results = SearchResults.new
      members = search_results.members('fire_nation')

      expect(members).to be_a Array
      expect(members.first).to be_a Member
    end
  end
end
