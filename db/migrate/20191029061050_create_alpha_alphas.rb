class CreateAlphaAlphas < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_alphas do |t|
      t.references :alpha_framework, foreign_key: true
      t.references :alpha_alpha_def, foreign_key: true

      t.timestamps
    end
  end
end
