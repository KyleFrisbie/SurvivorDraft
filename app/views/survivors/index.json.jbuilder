json.array!(@survivors) do |survivor|
  json.extract! survivor, :id, :name, :age, :residence, :photo_url, :fantasy, :elimination_number
  json.url survivor_url(survivor, format: :json)
end
