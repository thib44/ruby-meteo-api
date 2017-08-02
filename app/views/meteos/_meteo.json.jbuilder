json.extract! meteo, :id, :created_at, :updated_at
json.url meteo_url(meteo, format: :json)
