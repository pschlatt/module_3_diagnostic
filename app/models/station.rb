class Station
  attr_reader :name, :address, :fuel_types, :distance, :access_times
  def initialize(api_info)
    @api_info = api_info
    @name = "#{api_info["station_name"]}"
    @address = "#{api_info["street_address"]} #{api_info["city"]} #{api_info["state"]}"
    @fuel_types = "#{api_info["fuel_type_code"]}"
    @distance = "#{api_info["distance"]}"
    @access_times = "#{api_info["access_days_time"]}"
  end

  # "access_code": "public",
  #             "access_days_time": "24 hours daily",
  #             "access_detail_code": null,
  #             "cards_accepted": null,
  #             "date_last_confirmed": "2019-08-26",
  #             "expected_date": null,
  #             "fuel_type_code": "ELEC",
  #             "groups_with_access_code": "Public",
  #             "id": 66897,
  #             "open_date": null,
  #             "owner_type_code": null,
  #             "status_code": "E",
  #             "station_name": "UDR",
  #             "station_phone": "888-758-4389",
  #             "updated_at": "2019-08-26T09:12:07Z",
  #             "facility_type": null,
  #             "geocode_status": "GPS",
  #             "latitude": 39.7300224,
  #             "longitude": -104.9883424,
  #             "city": "Denver",
  #             "intersection_directions": "816 ACOMA 1; For residents only - 5th Floor",
  #             "plus4": null,
  #             "state": "CO",
  #             "street_address": "800 Acoma St",
  #             "zip": "80204",
  #             "country": "US",
  #             "bd_blends": null,
  #             "cng_dispenser_num": null,
  #             "cng_fill_type_code": null,
  #             "cng_psi": null,
  #             "cng_renewable_source": null,
  #             "cng_total_compression": null,
  #             "cng_total_storage": null,
  #             "cng_vehicle_class": null,
  #             "e85_blender_pump": null,
  #             "e85_other_ethanol_blends": null,
  #             "ev_connector_types": [
  #                 "J1772"
  #             ],
  #             "ev_dc_fast_num": null,
  #             "ev_level1_evse_num": null,
  #             "ev_level2_evse_num": 2,
  #             "ev_network": "ChargePoint Network",
  #             "ev_network_web": "http://www.chargepoint.com/",
  #             "ev_other_evse": null,
  #             "ev_pricing": "Free",
  #             "ev_renewable_source": null,
  #             "hy_is_retail": null,
  #             "hy_pressures": null,
  #             "hy_standards": null,
  #             "hy_status_link": null,
  #             "lng_renewable_source": null,
  #             "lng_vehicle_class": null,
  #             "lpg_primary": null,
  #             "lpg_nozzle_types": null,
  #             "ng_fill_type_code": null,
  #             "ng_psi": null,
  #             "ng_vehicle_class": null,
  #             "access_days_time_fr": null,
  #             "intersection_directions_fr": null,
  #             "bd_blends_fr": null,
  #             "groups_with_access_code_fr": "Public",
  #             "ev_pricing_fr": null,
  #             "ev_network_ids": {
  #                 "posts": [
  #                     "1:118249"
  #                 ],
  #                 "ports": [
  #                     "1",
  #                     "2"
  #                 ]
  #             },
  #             "distance": 0.31422,
  #             "distance_km": 0.50569


end
