json.array!(@products) do |product|
  json.extract! product, :id, :name, :category, :photo, :details
  json.url product_url(product, format: :json)
end
