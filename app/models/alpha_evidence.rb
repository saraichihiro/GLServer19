# -*- coding: utf-8 -*-

class AlphaEvidence < ApplicationRecord
  #belongs_to :scrum_member
  belongs_to :alpha_item

  validate :validate_complete

  def self.build_framework(alpha_item)
    evidence = alpha_item.create_alpha_evidence(alpha_item: alpha_item)

    return evidence
  end

  private
    # 完了がチェックされたとき、20文字以上の根拠が書かれているかを検証する。
    def validate_complete
      if self.completed
        if self.document.length < 20
          errors.add(:completed, "十分な根拠が書かれていません")
        end
      end
    end
end
