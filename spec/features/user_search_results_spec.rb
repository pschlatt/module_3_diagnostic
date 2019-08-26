require "rails_helper"

RSpec.describe "User" do
  it "attempts to search with zip code" do
    visit root_path

    fill_in :q, with: "80203"
    click_on "Locate"
    expect(current_path).to eq(search_path)
    expect(page).to have_content("Station:", count: 10)
    expect(page).to have_css(".fuel_types", count: 10)
    expect(page).to have_css(".distance", count: 10)
    expect(page).to have_css(".access_times", count: 10)
    expect(page).to have_css(".address", count: 10)
  end
end




# As a user
# When I visit "/"
# And I fill in the search form with 80203 (Note: Use the existing search form)
# And I click "Locate"
# Then I should be on page "/search"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
