class AlphaAlpha < ApplicationRecord
  belongs_to :alpha_framework
  belongs_to :alpha_alpha_def

  has_many   :alpha_states
end
