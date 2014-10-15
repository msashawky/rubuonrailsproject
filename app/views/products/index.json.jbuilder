json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :photo, :product_price, :product_count, :product_description

  json.url product_url(product, format: :json)
end

