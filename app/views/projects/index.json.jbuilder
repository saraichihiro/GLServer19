json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start, :end, :length, :description
  json.url project_url(project, format: :json)
end
