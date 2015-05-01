json.array!(@opens) do |open|
  json.extract! open, :id
  json.url open_url(open, format: :json)
end
