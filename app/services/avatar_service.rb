class AvatarService

  def nation_members(nation)
    get_json("/api/v1/characters?affiliation=#{nation}")
  end

  private

  def conn
    conn ||= Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
