class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.integer :no
      t.text :description
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :sprints, :no, unique: true
  end
end
