json.array!(@sprints) do |sprint|
  json.extract! sprint, :id, :no, :description, :project_id
  json.url sprint_url(sprint, format: :json)
end
