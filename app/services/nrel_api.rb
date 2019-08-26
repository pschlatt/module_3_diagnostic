class NrelApi

  def initialize(location)
    @location = location
  end

  def by_location
    extension = "/v1/nearest.json?location=#{@location}"
    make_call(extension)
  end

  def make_call(extension = "")
    resp = conn.get("/api/alt-fuel-stations#{extension}")
    JSON.parse(resp.body)
    # require 'pry'; binding.pry
  end

  private

  def conn
    conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params['api_key'] = ENV['API_KEY']
      faraday.params['fuel_types'] = "ELEC,LPG"
      faraday.params['radius'] = "6.0"
      faraday.params['limit'] = "10"
      faraday.adapter Faraday.default_adapter
    end
  end

end
