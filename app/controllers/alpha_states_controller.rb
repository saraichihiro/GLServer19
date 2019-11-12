class AlphaStatesController < ApplicationController

  # GET /alpha_states
  # GET /alpha_states.json
  def index
    @alpha_alpha = AlphaAlpha.find(params[:alpha_alpha_id])
    @alpha_states = @alpha_alpha.alpha_states
    @project = @alpha_alpha.alpha_framework.project
  end

  # GET /alpha_states/1
  # GET /alpha_states/1.json
  def show
    @alpha_state = AlphaState.find(params[:id])
    @project = @alpha_state.alpha_alpha.alpha_framework.project

    @alpha_alpha = @alpha_state.alpha_alpha
  end

end
