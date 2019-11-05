class CreateAlphaStates < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_states do |t|
      t.boolean     :completed, default: false
      t.integer     :completed_items, default: 0
      t.datetime    :completed_at
      t.references  :alpha_alpha, foreign_key: true
      t.references  :alpha_state_def, foreign_key: true

      t.timestamps
    end
  end
end
