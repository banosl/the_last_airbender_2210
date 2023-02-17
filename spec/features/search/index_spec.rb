require 'rails_helper'

RSpec.describe "Search index" do
  describe "when visiting search after selecting a nation from '/'" do
    it 'user sees total number of people in the fire nation' do
      visit '/'

      select "Fire Nation", from: :nation
      click_button("Search For Members")

      expect(page).to have_content("Fire Nation")
      expect(page).to have_content("Number of members: ")
    end

    xit 'user sees a list of the top 25 members of the nation' do

    end

    it  'for each member there is their name, photo, list of allies, list of enemies, and any affiliations'
  end
end