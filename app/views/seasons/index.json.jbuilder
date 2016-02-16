json.array!(@seasons) do |season|
  json.extract! season, :id, :number, :name, :location
  json.url season_url(season, format: :json)
end
