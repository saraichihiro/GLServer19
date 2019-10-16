class CreateBacklogItems < ActiveRecord::Migration[5.1]
  def change
    create_table :backlog_items do |t|
      t.integer :itemType
      t.integer :no
      t.integer :seq
      t.date :create_at
      t.string :type
      t.integer :state
      t.integer :estimate
      t.date :started_at
      t.date :ended_at
      t.string :description
      t.string :supplement
      t.string :priority
      t.integer :value

      t.timestamps null: false
    end
  end
end
