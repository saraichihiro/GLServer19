class BacklogItem < ApplicationRecord
	belongs_to :project
	belongs_to :sprint
	has_many   :sprintbacklog,  class_name: "BacklogItem", :foreign_key => "backlog_item_id", dependent: :destroy
	belongs_to :productbacklog, class_name: "BacklogItem", :foreign_key => "backlog_item_id", optional: true
	belongs_to :blog_author,    class_name: 'ScrumMember', :foreign_key => 'blog_author_id'
	belongs_to :assign_to,      class_name: 'ScrumMember', :foreign_key => 'assign_to_id', optional: true

 	BACKLOG_ITEM_ROLS = ["", "Todo", "Doing","Done","Hold"]
 	BACKLOG_ITEM_TYPE = ["PBL", "SBL"]

	validates :itemType, presence: true
    validates :no, presence: true
    #validates :seq
    validates :dev_type, presence: true
    validates :state, presence: true
    #validates :estimate, presence: true
    #validates :started_at
    #validates :ended_at
    validates :description, presence: true
    #validates :supplement
    validates :priority, presence: true
    validates :value, presence: true
    validates :project_id, presence: true
    validates :sprint_id, presence: true
    #validates :backlog_item_id
    #validates :blog_author_id, presence: true
    #validates :assign_to_id

	validate :date_check
	def date_check
		if self.started_at.nil? == false && self.ended_at.nil? == false && self.started_at > self.ended_at
			errors.add(:started_at, "開始日を正しく記入して下さい。")
			errors.add(:ended_at, "終了日を正しく記入して下さい。")
		end
	end

 	
end
