json.array!(@horselists) do |horselist|
  json.extract! horselist, :player, :horse, :currant_level, :range, :date, :note
  json.url horselist_url(horselist, format: :json)
end
