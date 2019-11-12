class AlphaItem < ApplicationRecord
  belongs_to :alpha_state
  belongs_to :alpha_item_def

  has_one :alpha_evidence, dependent: :destroy

  def self.build_framework(alpha_state, alpha_item_def)
    item = alpha_state.alpha_items.create(alpha_item_def: alpha_item_def)

    AlphaEvidence.build_framework(item)

    return item
  end

  def dseq
    self.alpha_item_def.dseq
  end

  def dname
    self.alpha_item_def.dname
  end

  def ddescription
    self.alpha_item_def.ddescription
  end

  def completed?
    self.alpha_evidence.completed
  end

  def completed_at
    completed? && self.alpha_evidence.completed_at
  end

  def get_document
    self.alpha_evidence.document
  end


end
