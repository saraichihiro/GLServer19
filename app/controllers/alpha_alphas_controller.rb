class AlphaAlphasController < ApplicationController
  before_action :set_alpha_alpha, only: [:show]

  # GET /alpha_alphas
  # GET /alpha_alphas.json
  def index
    #@alpha_alphas = AlphaAlpha.all
    @project = Project.find(params[:project_id])
    @alpha_alphas = @project.alpha_framework.alpha_alphas
  end

  # GET /alpha_alphas/1
  # GET /alpha_alphas/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_alpha
      @alpha_alpha = AlphaAlpha.find(params[:id])
      @project = @alpha_alpha.alpha_framework.project
    end

end
