json.array!(@survivors) do |survivor|
  json.extract! survivor, :id, :name, :tribe_id, :elimination_number, :photo_url
  json.url survivor_url(survivor, format: :json)
end
