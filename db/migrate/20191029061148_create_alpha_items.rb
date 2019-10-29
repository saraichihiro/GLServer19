class CreateAlphaItems < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_items do |t|
      t.boolean :completed
      t.datetime :completed_at
      t.references :alpha_state, foreign_key: true
      t.references :alpha_item_def, foreign_key: true

      t.timestamps
    end
  end
end
