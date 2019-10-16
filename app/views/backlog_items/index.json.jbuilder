json.array!(@backlog_items) do |backlog_item|
  json.extract! backlog_item, :id, :itemType, :no, :seq, :create_at, :type, :state, :estimate, :started_at, :ended_at, :description, :supplement, :priority, :value
  json.url backlog_item_url(backlog_item, format: :json)
end
