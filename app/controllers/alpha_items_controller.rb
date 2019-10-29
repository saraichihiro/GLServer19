class AlphaItemsController < ApplicationController
  before_action :set_alpha_item, only: [:show, :edit, :update, :destroy]

  # GET /alpha_items
  # GET /alpha_items.json
  def index
    @alpha_items = AlphaItem.all
  end

  # GET /alpha_items/1
  # GET /alpha_items/1.json
  def show
  end

  # GET /alpha_items/new
  def new
    @alpha_item = AlphaItem.new
  end

  # GET /alpha_items/1/edit
  def edit
  end

  # POST /alpha_items
  # POST /alpha_items.json
  def create
    @alpha_item = AlphaItem.new(alpha_item_params)

    respond_to do |format|
      if @alpha_item.save
        format.html { redirect_to @alpha_item, notice: 'Alpha item was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_item }
      else
        format.html { render :new }
        format.json { render json: @alpha_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_items/1
  # PATCH/PUT /alpha_items/1.json
  def update
    respond_to do |format|
      if @alpha_item.update(alpha_item_params)
        format.html { redirect_to @alpha_item, notice: 'Alpha item was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_item }
      else
        format.html { render :edit }
        format.json { render json: @alpha_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_items/1
  # DELETE /alpha_items/1.json
  def destroy
    @alpha_item.destroy
    respond_to do |format|
      format.html { redirect_to alpha_items_url, notice: 'Alpha item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_item
      @alpha_item = AlphaItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_item_params
      params.require(:alpha_item).permit(:completed, :completed_at, :alpha_state_id, :alpha_item_def_id)
    end
end
