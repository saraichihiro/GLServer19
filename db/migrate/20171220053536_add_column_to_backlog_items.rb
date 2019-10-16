class AddColumnToBacklogItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :backlog_items, :project, index: true, foreign_key: true
    add_reference :backlog_items, :sprint, index: true, foreign_key: true
  end
end
