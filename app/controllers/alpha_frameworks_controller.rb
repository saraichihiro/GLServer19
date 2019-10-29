class AlphaFrameworksController < ApplicationController
  before_action :set_alpha_framework, only: [:show, :edit, :update, :destroy]

  # GET /alpha_frameworks
  # GET /alpha_frameworks.json
  def index
    @alpha_frameworks = AlphaFramework.all
  end

  # GET /alpha_frameworks/1
  # GET /alpha_frameworks/1.json
  def show
  end

  # GET /alpha_frameworks/new
  def new
    @alpha_framework = AlphaFramework.new
  end

  # GET /alpha_frameworks/1/edit
  def edit
  end

  # POST /alpha_frameworks
  # POST /alpha_frameworks.json
  def create
    @alpha_framework = AlphaFramework.new(alpha_framework_params)

    respond_to do |format|
      if @alpha_framework.save
        format.html { redirect_to @alpha_framework, notice: 'Alpha framework was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_framework }
      else
        format.html { render :new }
        format.json { render json: @alpha_framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_frameworks/1
  # PATCH/PUT /alpha_frameworks/1.json
  def update
    respond_to do |format|
      if @alpha_framework.update(alpha_framework_params)
        format.html { redirect_to @alpha_framework, notice: 'Alpha framework was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_framework }
      else
        format.html { render :edit }
        format.json { render json: @alpha_framework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_frameworks/1
  # DELETE /alpha_frameworks/1.json
  def destroy
    @alpha_framework.destroy
    respond_to do |format|
      format.html { redirect_to alpha_frameworks_url, notice: 'Alpha framework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_framework
      @alpha_framework = AlphaFramework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_framework_params
      params.require(:alpha_framework).permit(:project_id, :alpha_framework_def_id)
    end
end
