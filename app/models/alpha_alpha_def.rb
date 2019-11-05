class AlphaAlphaDef < ApplicationRecord
  belongs_to :alpha_framework_def
  has_many   :alpha_state_defs, dependent: :destroy
end
