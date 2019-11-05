module ProjectsHelper

  def all_project
    Project.all
  end

  def set_current_project(project)
    session[:current_project] = project.id
  end

  def current_project
    current_project_id = session[:current_project]
    if current_project_id
      current_project = Project.find_by(id: current_project_id)
      if current_project
        return current_project
      else
        session[:current_project] = nil
      end
    end
    return nil
  end

  def get_current_project_id
    current_project && current_project.id
  end

  def get_project_name
    if current_project
      return current_project.name
    end

    "プロジェクト一覧"
  end

  def current_project?(project)
    project == current_project
  end

  def clear_current_project
    session[:current_project] = nil
  end
end
