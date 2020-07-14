require 'rails_helper'

describe Member do
  it 'can be created' do
    member_data = {
      name: 'Sakka',
      photoUrl: 'Sakka.jpg',
      allies: ['Aang', 'Katara'],
      enemies: ['Zuko', 'Azula'],
      affiliation: ['Team Avatar', 'Water Tribe Warriors']
    }

    member = Member.new(member_data)

    expect(member).to be_a Member
    expect(member.name).to eq(member_data[:name])
    expect(member.photo).to eq(member_data[:photoUrl])
    expect(member.allies).to eq(member_data[:allies].join(', '))
    expect(member.enemies).to eq(member_data[:enemies].join(', '))
    expect(member.affiliation).to eq(member_data[:affiliation])
  end
end
