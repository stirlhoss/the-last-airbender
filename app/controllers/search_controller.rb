class SearchController < ApplicationController
  def index
    @members = SearchFacade.member_by_affiliation(params[:nation].gsub('_', ' '))
  end
end
