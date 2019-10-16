module BacklogItemsHelper


	def get_sprint
		case controller.action_name
		when "new_pbl", "create"
			Sprint.where(project_id: params[:project_id])
		when "edit_pbl"

			@project_id = BacklogItem.find(params[:id]).project.id

			Sprint.where(project_id: @project_id)
		end
	end

	def get_pbl_sprint
		case controller.action_name
		when "new_sbl"
			BacklogItem.find(params[:backlog_item_id]).sprint_id
		when "edit_sbl"

			BacklogItem.find(params[:id]).sprint.id
		when "create","update"
			@backlog_item.sprint.id
		end
	end

	def set_author
		case controller.action_name
		when "new_pbl"
			@user = current_user
			@project = Project.find(params[:project_id])

			@author = ScrumMember.find_by(user_id: @user.id, project_id: @project.id).id

		when "edit_pbl"
			BacklogItem.find(params[:id]).blog_author_id
		when "create","update"
			@backlog_item.blog_author_id
		end
	end

	def set_sbl_author
		case controller.action_name
		when "new_sbl"
			@user = current_user
			@project = BacklogItem.find(params[:backlog_item_id]).project

			@author = ScrumMember.find_by(user_id: @user.id, project_id: @project.id).id

		when "edit_sbl"
			BacklogItem.find(params[:id]).blog_author_id
		when "create","update"
			@backlog_item.blog_author_id
		end
	end

	def set_backlog
		case controller.action_name
		when "new_sbl"

			BacklogItem.find(params[:backlog_item_id]).id


		when "edit_sbl"
			BacklogItem.find(params[:id]).backlog_item_id
		when "create","update"
			@backlog_item.backlog_item_id
		end
	end

	def get_blno
		case controller.action_name
		when "new_pbl"
			@lastbl = BacklogItem.where(project_id: params[:project_id], itemType: '0').last
			if @lastbl == nil
				@num = 1
			else 
				@num = @lastbl.no
				@num = @num + 1
			end
		when 'create'
			@lastbl = BacklogItem.where(project_id: params[:project_id], itemType: @backlog_item.itemType).last
			if @lastbl == nil
				@num = 1
			else 
				@num = @lastbl.no
				@num = @num + 1
			end
		else
			BacklogItem.find(params[:id]).no
		end
	end

	def get_sbl_blno
		case controller.action_name
		when "new_sbl"
			@lastbl = BacklogItem.where(project_id: get_current_project_id, itemType: '1').last
			if @lastbl == nil
				@num = 1
			else 
				@num = @lastbl.no
				@num = @num + 1
			end
		when 'create'
			@lastbl = BacklogItem.where(project_id: params[:project_id], itemType: @backlog_item.itemType).last
			if @lastbl == nil
				@num = 1
			else 
				@num = @lastbl.no
				@num = @num + 1
			end
		else
			BacklogItem.find(params[:id]).no
		end
	end


	def get_sbl(backlog_item)
		@backlog_sbl = BacklogItem.where(backlog_item_id: backlog_item.id)
	end

	def get_assign
		case controller.action_name
		when "new_sbl"
			@project = BacklogItem.find(params[:backlog_item_id]).project

			@member = ScrumMember.where(project_id: @project.id)

		when "edit_sbl","update"
			@project = BacklogItem.find(params[:id]).project

			@member = ScrumMember.where(project_id: @project.id)
		when 'create'
			@member = ScrumMember.where(project_id: @project.id)
		end
	end

	
end
