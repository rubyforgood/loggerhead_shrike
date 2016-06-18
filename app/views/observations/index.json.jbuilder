json.array!(@observations) do |observation|
  json.extract! observation, :id, :sighted_at, :location, :latitude, :longitude, :num_bands
  json.url observation_url(observation, format: :json)
end
