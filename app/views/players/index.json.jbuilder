json.array!(@players) do |player|
  json.extract! player, :id, :name, :points, :place, :wins, :losses
  json.url player_url(player, format: :json)
end
