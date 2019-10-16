json.array!(@scrum_members) do |scrum_member|
  json.extract! scrum_member, :id, :role, :description, :project_id, :user_id
  json.url scrum_member_url(scrum_member, format: :json)
end
