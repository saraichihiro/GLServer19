class Sprint < ApplicationRecord
  belongs_to :project
  default_scope -> { order(no: :ASC) }

  attr_accessor :name



	validates :start, presence: true
	validates :end, presence: true
	validates :project_id, presence: true
	validate :date_check


	def date_check
		if self.start.nil? == false && self.end.nil? == false && self.start >= self.end
			errors.add(:start, "開始日を正しく記入して下さい。")
			errors.add(:end, "終了日を正しく記入して下さい。")
		end
	end
end
