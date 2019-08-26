require "rails_helper"

RSpec.describe "Nrel Api" do
  it "Query Returns correct Location" do
    zip = "80204"
    response = NrelApi.new(zip).by_location
    expect(response["latitude"]).to eq(39.7345)
    expect(response["longitude"]).to eq(-105.020783)
  end
end
