class AlphaItem < ApplicationRecord
  belongs_to :alpha_state
  belongs_to :alpha_item_def

  has_one    :alpha_evidence

  def self.build_framework(alpha_state, alpha_item_def)
    item = AlphaItem.create
    item.alpha_state = alpha_state
    item.alpha_item_def = alpha_item_def

    AlphaEvidence.build_framework(item)

    return item
  end
end
