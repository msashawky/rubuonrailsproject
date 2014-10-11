json.array!(@ngo_pages) do |ngo_page|
  json.extract! ngo_page, :id, :name, :license_number, :description, :email, :address
  json.url ngo_page_url(ngo_page, format: :json)
end
