class AlphaEvidence < ApplicationRecord
  belongs_to :scrum_member
  belongs_to :alpha_item

  def self.build_framework(alpha_item)
    evidence = AlphaEvidence.create
    evidence.alpha_item = alpha_item

    return evidence
  end
end
