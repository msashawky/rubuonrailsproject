json.array!(@ngos) do |ngo|
  json.extract! ngo, :id, :NGO_name, :bank_account, :NGO_number, :address, :website, :ZIP_code, :phone_number, :email, :fb_link, :tw_link, :gp_link
  json.url ngo_url(ngo, format: :json)
end
