json.array!(@requests) do |request|
  json.extract! request, :spec, :date, :note
  json.url request_url(request, format: :json)
end
