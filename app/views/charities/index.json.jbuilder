json.array!(@charities) do |charity|
  json.extract! charity, :id, :charity_field
  json.url charity_url(charity, format: :json)
end
