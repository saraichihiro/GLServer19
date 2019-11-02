class AlphaItem < ApplicationRecord
  belongs_to :alpha_state
  belongs_to :alpha_item_def

  has_one    :alpha_evidence

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
end


