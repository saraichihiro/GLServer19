class AlphaStateDef < ApplicationRecord
  belongs_to :alpha_alpha_def
  has_many   :alpha_item_defs
end
