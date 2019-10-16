class RenameColumnToBacklogItems < ActiveRecord::Migration[5.1]
  def change
  	rename_column :backlog_items, :type, :dev_type
  end
end
