class StaticPagesController < ApplicationController
  def home
  	if !logged_in?
			clear_current_project
		end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
