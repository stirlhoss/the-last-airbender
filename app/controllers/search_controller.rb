class SearchController < ApplicationController
  def index
    @members = MemberFacade.member_by_affiliation(params[:nation].gsub('_', ' '))
  end
end
