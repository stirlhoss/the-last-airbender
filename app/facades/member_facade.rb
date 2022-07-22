class MemberFacade
  class << self
    def member_by_affiliation(affiliation)
      parsed_json = MemberService.member_search_by_affiliation(affiliation)
      parsed_json.map do |member|
        Member.new(member)
      end
    end
  end
end
