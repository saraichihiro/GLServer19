module ProjectsHelper

  def all_project
    Project.all
  end

  def set_current_project_id(project)
    session[:current_project] = project.id
  end

  def get_current_project_id
    session[:current_project]
  end

  def get_project_name
   @project_name = "プロジェクト一覧"

   if session[:current_project] != nil
    @project_name = Project.find(session[:current_project]).name + " プロジェクト"
   end

    @project_name
  end

 # def current_project?(project)
 #   project == @current_project
 # end

  def clear_current_project
  if session[:current_project] != nil
    session[:current_project] = nil
  end
end
end
