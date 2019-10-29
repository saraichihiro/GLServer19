class CreateAlphaEvidences < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_evidences do |t|
      t.string :document
      t.references :scrum_member, foreign_key: true
      t.references :alpha_item, foreign_key: true

      t.timestamps
    end
  end
end
