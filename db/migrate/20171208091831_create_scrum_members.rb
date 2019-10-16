class CreateScrumMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :scrum_members do |t|
      t.string :role
      t.text :description
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
