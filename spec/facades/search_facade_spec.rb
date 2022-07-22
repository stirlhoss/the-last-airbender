require 'rails_helper'

RSpec.describe SearchFacade do
  describe 'member_by_affiliation' do
    it 'searches through characters with a specific affiliation and turns them into poros' do
      expected = SearchFacade.member_by_affiliation('Water Tribe')

      expect(expected.class).to eq Array
      expect(expected).to be_all Member

      first_member = expected.first

      expect(first_member.name).to eq 'Amon'
      expect(first_member.enemies).to be_an Array
      expect(first_member.enemies.first).to eq 'Lin Beifong'
      expect(first_member.allies).to be_an Array
      expect(first_member.allies.first).to eq 'Tarrlok'
      expect(first_member.affiliation).to eq ' Equalists (formerly) Northern Water Tribe (formerly)'
    end
  end
end
