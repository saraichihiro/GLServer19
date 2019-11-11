class AlphaItemsController < ApplicationController

  # GET /alpha_items
  # GET /alpha_items.json
  def index
    @alpha_state = AlphaState.find(params[:alpha_state_id])
    @alpha_items = @alpha_state.alpha_items
    @alpha_alpha = @alpha_state.alpha_alpha
    @project = @alpha_state.alpha_alpha.alpha_framework.project
  end

  # GET /alpha_items/1
  # GET /alpha_items/1.json
  def show
    @alpha_item = AlphaItem.find(params[:id])
  end

end
