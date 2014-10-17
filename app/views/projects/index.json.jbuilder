json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :project_description, :project_photo, :project_social_state
  json.url project_url(project, format: :json)
end
