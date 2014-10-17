json.array!(@user_data) do |user_datum|
  json.extract! user_datum, :id, :first_name, :last_name, :email, :phone_number, :username, :password, :gender
  json.url user_datum_url(user_datum, format: :json)
end
