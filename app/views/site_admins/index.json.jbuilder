json.array!(@site_admins) do |site_admin|
  json.extract! site_admin, :id
  json.url site_admin_url(site_admin, format: :json)
end
