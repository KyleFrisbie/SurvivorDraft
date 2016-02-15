json.array!(@players) do |player|
  json.extract! player, :id, :name, :points, :place
  json.url player_url(player, format: :json)
end
