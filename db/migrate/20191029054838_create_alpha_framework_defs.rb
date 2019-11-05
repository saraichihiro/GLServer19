class CreateAlphaFrameworkDefs < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_framework_defs do |t|
      t.string :dname
      t.text :ddescription

      t.timestamps
    end
  end
end
