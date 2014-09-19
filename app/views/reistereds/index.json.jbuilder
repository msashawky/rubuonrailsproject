json.array!(@reistereds) do |reistered|
  json.extract! reistered, :id, :name, :user_name, :phone_number, :password, :gender
  json.url reistered_url(reistered, format: :json)
end
