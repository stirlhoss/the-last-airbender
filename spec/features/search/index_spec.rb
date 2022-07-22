require 'rails_helper'

RSpec.describe Search: :Index do

  it 'shows a list of the characters that fall under that affiliation and all their details' do
    visit '/'

    click_button 'Search For Members'

    expect(page).to have_content 'Aang'
  end
end
