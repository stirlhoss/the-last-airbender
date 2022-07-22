class MemberService
  class << self

    def member_search_by_affiliation(affiliation)
      call_api("/api/v1/characters?affiliation=#{affiliation}")
    end

    private

    def call_api(path)
      response = conn.get(path)
      parsed_data(response)
    end

    def conn
      Faraday.new(url: 'https://last-airbender-api.herokuapp.com') do |faraday|
      end
    end

    def parsed_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
