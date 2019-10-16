class AddColumn3ToBacklogItems < ActiveRecord::Migration[5.1]
	def change
		add_reference :backlog_items, :blog_author, index: true
		add_reference :backlog_items, :assign_to, index: true
		add_foreign_key :backlog_items, :scrum_members, column: :blog_author_id
		add_foreign_key :backlog_items, :scrum_members, column: :assign_to_id
	end
end
