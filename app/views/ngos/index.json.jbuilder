json.array!(@ngos) do |ngo|
  json.extract! ngo, :id, :NGO_name, :bank_account, :NGO_number, :website, :ZIP_code, :phone_number, :fb_link, :tw_link, :gp_link, :country, :governorate, :city, :street, :apartment
  json.url ngo_url(ngo, format: :json)
end
