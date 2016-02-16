json.array!(@tribes) do |tribe|
  json.extract! tribe, :id, :name, :tribe_generation
  json.url tribe_url(tribe, format: :json)
end
