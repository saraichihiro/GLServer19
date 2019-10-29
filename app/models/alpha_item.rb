class AlphaItem < ApplicationRecord
  belongs_to :alpha_state
  belongs_to :alpha_item_def

  has_one    :alpha_evidence
end
