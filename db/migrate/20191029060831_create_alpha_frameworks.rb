class CreateAlphaFrameworks < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_frameworks do |t|
      t.references :project, foreign_key: true
      t.references :alpha_framework_def, foreign_key: true

      t.timestamps
    end
  end
end
