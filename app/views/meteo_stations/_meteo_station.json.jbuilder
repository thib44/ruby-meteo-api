json.extract! meteo_station, :id, :created_at, :updated_at
json.url meteo_station_url(meteo_station, format: :json)
