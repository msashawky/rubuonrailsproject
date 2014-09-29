json.array!(@registered_users) do |registered_user|
  json.extract! registered_user, :id, :card_number
  json.url registered_user_url(registered_user, format: :json)
end
