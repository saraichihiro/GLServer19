class AlphaItemDefsController < ApplicationController
  before_action :set_alpha_item_def, only: [:show, :edit, :update, :destroy]

  # GET /alpha_item_defs
  # GET /alpha_item_defs.json
  def index
    @alpha_item_defs = AlphaItemDef.all
  end

  # GET /alpha_item_defs/1
  # GET /alpha_item_defs/1.json
  def show
  end

  # GET /alpha_item_defs/new
  def new
    @alpha_item_def = AlphaItemDef.new
  end

  # GET /alpha_item_defs/1/edit
  def edit
  end

  # POST /alpha_item_defs
  # POST /alpha_item_defs.json
  def create
    @alpha_item_def = AlphaItemDef.new(alpha_item_def_params)

    respond_to do |format|
      if @alpha_item_def.save
        format.html { redirect_to @alpha_item_def, notice: 'Alpha item def was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_item_def }
      else
        format.html { render :new }
        format.json { render json: @alpha_item_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_item_defs/1
  # PATCH/PUT /alpha_item_defs/1.json
  def update
    respond_to do |format|
      if @alpha_item_def.update(alpha_item_def_params)
        format.html { redirect_to @alpha_item_def, notice: 'Alpha item def was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_item_def }
      else
        format.html { render :edit }
        format.json { render json: @alpha_item_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_item_defs/1
  # DELETE /alpha_item_defs/1.json
  def destroy
    @alpha_item_def.destroy
    respond_to do |format|
      format.html { redirect_to alpha_item_defs_url, notice: 'Alpha item def was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_item_def
      @alpha_item_def = AlphaItemDef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_item_def_params
      params.require(:alpha_item_def).permit(:dseq, :ddescription, :alpha_state_def_id)
    end
end
