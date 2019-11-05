class AlphaAlphaDefsController < ApplicationController
  before_action :set_alpha_alpha_def, only: [:show, :edit, :update, :destroy]

  # GET /alpha_alpha_defs
  # GET /alpha_alpha_defs.json
  def index
    #@alpha_alpha_defs = AlphaAlphaDef.all
    @framework_def = AlphaFrameworkDef.find(params[:alpha_framework_def_id])
    @alpha_alpha_defs = @framework_def.alpha_alpha_defs
  end

  # GET /alpha_alpha_defs/1
  # GET /alpha_alpha_defs/1.json
  def show
  end

  # GET /alpha_alpha_defs/new
  def new
    @alpha_alpha_def = AlphaAlphaDef.new
  end

  # GET /alpha_alpha_defs/1/edit
  def edit
  end

  # POST /alpha_alpha_defs
  # POST /alpha_alpha_defs.json
  def create
    @alpha_alpha_def = AlphaAlphaDef.new(alpha_alpha_def_params)

    respond_to do |format|
      if @alpha_alpha_def.save
        format.html { redirect_to @alpha_alpha_def, notice: 'Alpha alpha def was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_alpha_def }
      else
        format.html { render :new }
        format.json { render json: @alpha_alpha_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_alpha_defs/1
  # PATCH/PUT /alpha_alpha_defs/1.json
  def update
    respond_to do |format|
      if @alpha_alpha_def.update(alpha_alpha_def_params)
        format.html { redirect_to @alpha_alpha_def, notice: 'Alpha alpha def was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_alpha_def }
      else
        format.html { render :edit }
        format.json { render json: @alpha_alpha_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_alpha_defs/1
  # DELETE /alpha_alpha_defs/1.json
  def destroy
    @alpha_alpha_def.destroy
    respond_to do |format|
      format.html { redirect_to alpha_alpha_defs_url, notice: 'Alpha alpha def was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_alpha_def
      @alpha_alpha_def = AlphaAlphaDef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_alpha_def_params
      params.require(:alpha_alpha_def).permit(:dseq, :dname, :ddescription, :alpha_framework_def_id)
    end
end
