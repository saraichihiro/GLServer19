class AddCompletedToAlphaEvidence < ActiveRecord::Migration[5.1]
  def change
    add_column :alpha_evidences, :completed, :boolean, default: false
    add_column :alpha_evidences, :completed_at, :datetime
  end
end
