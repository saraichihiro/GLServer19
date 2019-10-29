class AlphaState < ApplicationRecord
  belongs_to :alpha_alpha
  belongs_to :alpha_state_def

  has_many   :alpha_items
end
