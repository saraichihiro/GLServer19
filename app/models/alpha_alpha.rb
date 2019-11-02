class AlphaAlpha < ApplicationRecord
  belongs_to :alpha_framework
  belongs_to :alpha_alpha_def

  has_many   :alpha_states

  def self.build_framework(framework, alpha_alpha_def)
    alpha = framework.alpha_alphas.create(alpha_alpha_def: alpha_alpha_def)

    state_defs = alpha_alpha_def.alpha_state_defs
    if state_defs then
      state_defs.each do |state_def|
        alpha.alpha_states << AlphaState.build_framework(alpha, state_def)
      end
    end

    return alpha
  end

  def dseq
    self.alpha_alpha_def.dseq
  end

  def dname
    self.alpha_alpha_def.dname
  end

  def ddescription
    self.alpha_alpha_def.ddescription
  end
end
