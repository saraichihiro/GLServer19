class AlphaItemsController < ApplicationController
  before_action :set_alpha_item, only: [:show]

  # GET /alpha_items
  # GET /alpha_items.json
  def index
    @alpha_state = AlphaState.find(params[:alpha_state_id])
    @alpha_items = @alpha_state.alpha_items
  end

  # GET /alpha_items/1
  # GET /alpha_items/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_item
      @alpha_item = AlphaItem.find(params[:id])
    end
end
