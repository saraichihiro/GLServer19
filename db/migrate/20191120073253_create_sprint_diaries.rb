class CreateSprintDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :sprint_diaries do |t|
      t.string :bdiary

      t.timestamps
    end
  end
end
