class AddColumn2ToBacklogItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :backlog_items, :backlog_item, index: true, foreign_key: true
  end
end
