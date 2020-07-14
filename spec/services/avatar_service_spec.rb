require 'rails_helper'

describe AvatarService do
  describe 'Instance methods' do
    it '#nation_members' do
      service = AvatarService.new
      nation_members = AvatarService.new.nation_members('Water+Tribe')
      expect(nation_members).to be_a Array
      member_data = nation_members.first

      expect(member_data).to have_key :name
      expect(member_data).to have_key :affiliation
      expect(member_data).to have_key :enemies
      expect(member_data).to have_key :allies
      expect(member_data).to have_key :photoUrl
    end
  end
end
