class AlphaFrameworkDefsController < ApplicationController
  before_action :set_alpha_framework_def, only: [:show, :edit, :update, :destroy]

  # GET /alpha_framework_defs
  # GET /alpha_framework_defs.json
  def index
    @alpha_framework_defs = AlphaFrameworkDef.all
  end

  # GET /alpha_framework_defs/1
  # GET /alpha_framework_defs/1.json
  def show
  end

  # GET /alpha_framework_defs/new
  def new
    @alpha_framework_def = AlphaFrameworkDef.new
  end

  # GET /alpha_framework_defs/1/edit
  def edit
  end

  # POST /alpha_framework_defs
  # POST /alpha_framework_defs.json
  def create
    @alpha_framework_def = AlphaFrameworkDef.new(alpha_framework_def_params)

    respond_to do |format|
      if @alpha_framework_def.save
        format.html { redirect_to @alpha_framework_def, notice: 'Alpha framework def was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_framework_def }
      else
        format.html { render :new }
        format.json { render json: @alpha_framework_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_framework_defs/1
  # PATCH/PUT /alpha_framework_defs/1.json
  def update
    respond_to do |format|
      if @alpha_framework_def.update(alpha_framework_def_params)
        format.html { redirect_to @alpha_framework_def, notice: 'Alpha framework def was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_framework_def }
      else
        format.html { render :edit }
        format.json { render json: @alpha_framework_def.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_framework_defs/1
  # DELETE /alpha_framework_defs/1.json
  def destroy
    @alpha_framework_def.destroy
    respond_to do |format|
      format.html { redirect_to alpha_framework_defs_url, notice: 'Alpha framework def was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_framework_def
      @alpha_framework_def = AlphaFrameworkDef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_framework_def_params
      params.require(:alpha_framework_def).permit(:dname, :ddescription)
    end
end
