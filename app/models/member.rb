class Member
  attr_reader :name, :photo, :allies, :enemies, :affiliation

  def initialize(member_data)
    @name = member_data[:name]
    @photo = member_data[:photoUrl]
    @allies = member_data[:allies].join(', ')
    @enemies = member_data[:enemies].join(', ')
    @affiliation = member_data[:affiliation]
  end
end
