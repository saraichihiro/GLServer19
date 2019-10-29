class AlphaStateDefsController < ApplicationController
  before_action :set_alpha_state_def, only: [:show, :edit, :update, :destroy]

  # GET /alpha_state_defs
  # GET /alpha_state_defs.json
  def index
    @alpha_state_defs = AlphaStateDef.all
  end

  # GET /alpha_state_defs/1
  # GET /alpha_state_defs/1.json
  def show
  end

  # GET /alpha_state_defs/new
  def new
    @alpha_state_def = AlphaStateDef.new
  end

  # GET /alpha_state_defs/1/edit
  def edit
  end

  # POST /alpha_state_defs
  # POST /alpha_state_defs.json
  def create
    @alpha_state_def = AlphaStateDef.new(alpha_state_def_params)

    respond_to do |format|
      if @alpha_state_def.save
        format.html { redirect_to @alpha_state_def, notice: 'Alpha state def was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_state_def }
      else
        format.html { render :new }
        format.json { render json: @alpha_state_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_state_defs/1
  # PATCH/PUT /alpha_state_defs/1.json
  def update
    respond_to do |format|
      if @alpha_state_def.update(alpha_state_def_params)
        format.html { redirect_to @alpha_state_def, notice: 'Alpha state def was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_state_def }
      else
        format.html { render :edit }
        format.json { render json: @alpha_state_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_state_defs/1
  # DELETE /alpha_state_defs/1.json
  def destroy
    @alpha_state_def.destroy
    respond_to do |format|
      format.html { redirect_to alpha_state_defs_url, notice: 'Alpha state def was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_state_def
      @alpha_state_def = AlphaStateDef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_state_def_params
      params.require(:alpha_state_def).permit(:dseq, :dname, :ddescription, :alpha_alpha_def_id)
    end
end
