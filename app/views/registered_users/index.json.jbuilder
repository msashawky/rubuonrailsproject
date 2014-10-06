json.array!(@registered_users) do |registered_user|
  json.extract! registered_user, :id, :card_number, :country, :city, :street, :apartment, :governorate
  json.url registered_user_url(registered_user, format: :json)
end
