json.array!(@addresses) do |address|
  json.extract! address, :id, :country, :governorate, :city, :street, :apartment
  json.url address_url(address, format: :json)
end
