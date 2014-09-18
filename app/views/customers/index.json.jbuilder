json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :email, :date_of_birth, :username, :password, :phone, :gender
  json.url customer_url(customer, format: :json)
end
