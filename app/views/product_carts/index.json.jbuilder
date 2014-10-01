json.array!(@product_carts) do |product_cart|
  json.extract! product_cart, :id, :product_amount
  json.url product_cart_url(product_cart, format: :json)
end
