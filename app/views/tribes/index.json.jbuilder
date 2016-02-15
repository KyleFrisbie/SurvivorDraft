json.array!(@tribes) do |tribe|
  json.extract! tribe, :id, :name, :survivor_id
  json.url tribe_url(tribe, format: :json)
end
