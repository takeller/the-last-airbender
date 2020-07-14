class SearchResults

  def initialize
    @avatar_service ||= AvatarService.new
  end

  def members(nation)
    nation = format_nation_input(nation)
    json = @avatar_service.nation_members(nation)

    json.map do |member_data|
      Member.new(member_data)
    end
  end

  private

  def format_nation_input(nation)
    return nation.sub(/_/, '+') unless nation == 'water_tribes'

    nation.sub(/_/, '+').delete('s')
  end
end
