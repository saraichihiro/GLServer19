class CreateAlphaStateDefs < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_state_defs do |t|
      t.integer :dseq
      t.string :dname
      t.text :ddescription
      t.references :alpha_alpha_def, foreign_key: true

      t.timestamps
    end
  end
end
