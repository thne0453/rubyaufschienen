json.array!(@cancellors) do |cancellor|
  json.extract! cancellor, :id, :first_name, :last_name, :birthday
  json.url cancellor_url(cancellor, format: :json)
end
