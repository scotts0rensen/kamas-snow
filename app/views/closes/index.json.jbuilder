json.array!(@closes) do |close|
  json.extract! close, :id
  json.url close_url(close, format: :json)
end
