class AddStartToSprints < ActiveRecord::Migration[5.1]
  def change
    add_column :sprints, :start, :date
    add_column :sprints, :end, :date
  end
end
