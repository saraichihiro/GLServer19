class AlphaStatesController < ApplicationController
  before_action :set_alpha_state, only: [:show]

  # GET /alpha_states
  # GET /alpha_states.json
  def index
    @alpha_alpha = AlphaAlpha.find(params[:alpha_alpha_id])
    @alpha_states = @alpha_alpha.alpha_states
  end

  # GET /alpha_states/1
  # GET /alpha_states/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_state
      @alpha_state = AlphaState.find(params[:id])
    end
end
