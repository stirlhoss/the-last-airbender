require 'rails_helper'

RSpec.describe MemberService do
  describe 'all members endpoint' do
    it 'gets all members of water tribe and parses into json' do
      response = MemberService.member_search_by_affiliation('Water Tribe')

      expect(response).to be_a Array
      expect(response.count).to eq 44

      first_member = response.first

      expect(first_member).to have_key :name
      expect(first_member).to have_key :allies
      expect(first_member).to have_key :enemies
      expect(first_member).to have_key :photoUrl
      expect(first_member).to have_key :affiliation
      expect(first_member).to have_key :_id
    end

    it 'gets all members of fire nation and parses into json' do
      response = MemberService.member_search_by_affiliation('Fire Nation')

      expect(response).to be_a Array
      expect(response.count).to eq 97

      first_member = response.first

      expect(first_member).to have_key :name
      expect(first_member).to have_key :allies
      expect(first_member).to have_key :enemies
      expect(first_member).to have_key :affiliation
      expect(first_member).to have_key :_id
    end

    it 'gets all members of earth kingdom' do
      response = MemberService.member_search_by_affiliation('Earth Kingdom')

      expect(response).to be_a Array
      expect(response.count).to eq 76
    end

    it 'gets all members of air nomads' do
      response = MemberService.member_search_by_affiliation('Air Nomads')

      expect(response).to be_a Array
      expect(response.count).to eq 15
    end
  end
end
