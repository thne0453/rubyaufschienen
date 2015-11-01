json.array!(@users) do |user|
  json.extract! user, :id, :login_name, :first_name, :last_name, :birthday
  json.url user_url(user, format: :json)
end
