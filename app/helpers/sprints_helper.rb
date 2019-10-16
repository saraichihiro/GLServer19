module SprintsHelper


	def set_current_sprint_id

		@sprints = Sprint.where(project_id: get_current_project_id)

		if @sprints.count != 0
			session[:current_sprint] = @sprints.last.id

			@sprints.each{|sprint|
				if sprint.start <= Date.today && Date.today <= sprint.end
					session[:current_sprint] = sprint.id
					break			
				end
			}

		else
			session[:current_sprint] = nil
		end
	end

	def get_current_sprint_id
		session[:current_sprint]
	end

	def get_sprintno
		case controller.action_name
		when "new", "create"
			@lastnum = Sprint.where(project_id: params[:project_id]).last
			if @lastnum == nil
				@num = 1
			else 
				@num = @lastnum.no
				@num = @num + 1
			end
		else
			# action_name == 'edit' の時
			Sprint.find(params[:id]).no
		end
	end

	def get_project
		case controller.action_name
		when "new", "create"
			params[:project_id]
		else
			Sprint.find(params[:id]).project.id
		end
	end
end
