require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  #ログインしているか
  def is_logged_in?
    !session[:user_id].nil?
  end
  
  #～としてログインする
  def log_in_as(user, options = {})
    password    = options[:password]    || 'password'
    remember_me = options[:remember_me] || '1'
    if integration_test?
      post login_path, session: { email:       user.email,
                                  password:    password,
                                  remember_me: remember_me }
    else
      session[:user_id] = user.id
    end
  end

#project_helper

def set_current_project_id(project)
    session[:current_project] = project.id
  end

  def get_current_project_id
    session[:current_project]
  end

  def get_project_name
    @project_name = "プロジェクト一覧"

    if session[:current_project] != nil
      @project_name = "プロジェクト名：" + Project.find_by(id: session[:current_project]).name
    end

    @project_name
  end

 # def current_project?(project)
 #  project == @current_project
 # end

  private

    def integration_test?
      defined?(post_via_redirect)
    end
  end

#sprint_helper

  def set_current_sprint_id

    @sprints = Sprint.where(project_id: get_current_project_id)

    @sprints.each{|sprint|
      if sprint.start <= Date.today && Date.today <= sprint.end
        session[:current_sprint] = sprint.id
        break
      else
        session[:current_sprint] = sprint.id
      end
    }
  end

  def get_current_sprint_id
    session[:current_sprint]
  end

  def get_sprintno
    case controller.action_name
    when "new"
      @lastnum = Sprint.where(project_id: params[:project_id]).last
      if @lastnum == nil
        @num = 1
      else 
        @num = @lastnum.no
        @num = @num + 1
      end
    else
      Sprint.find(params[:id]).no
    end
  end

  def get_project
    case controller.action_name
    when "new"
      params[:project_id]
    else
      Sprint.find(params[:id]).project.id
    end
  end