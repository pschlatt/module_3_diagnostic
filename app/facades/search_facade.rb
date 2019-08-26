class SearchFacade

  def initialize(location)
    @location = location
  end

  def stations
    # require 'pry';binding.pry
    stations = grab_info["fuel_stations"].map do |station|
      Station.new(station)
    end
  end

  private

  def grab_info
    NrelApi.new(@location).by_location
  end

end
