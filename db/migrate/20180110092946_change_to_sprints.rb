class ChangeToSprints < ActiveRecord::Migration[5.1]
  def change
  	remove_index :sprints, :no
  	add_index :sprints, :no, unique: false
  end
end
