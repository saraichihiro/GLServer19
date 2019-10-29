class AlphaAlphasController < ApplicationController
  before_action :set_alpha_alpha, only: [:show, :edit, :update, :destroy]

  # GET /alpha_alphas
  # GET /alpha_alphas.json
  def index
    @alpha_alphas = AlphaAlpha.all
  end

  # GET /alpha_alphas/1
  # GET /alpha_alphas/1.json
  def show
  end

  # GET /alpha_alphas/new
  def new
    @alpha_alpha = AlphaAlpha.new
  end

  # GET /alpha_alphas/1/edit
  def edit
  end

  # POST /alpha_alphas
  # POST /alpha_alphas.json
  def create
    @alpha_alpha = AlphaAlpha.new(alpha_alpha_params)

    respond_to do |format|
      if @alpha_alpha.save
        format.html { redirect_to @alpha_alpha, notice: 'Alpha alpha was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_alpha }
      else
        format.html { render :new }
        format.json { render json: @alpha_alpha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_alphas/1
  # PATCH/PUT /alpha_alphas/1.json
  def update
    respond_to do |format|
      if @alpha_alpha.update(alpha_alpha_params)
        format.html { redirect_to @alpha_alpha, notice: 'Alpha alpha was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_alpha }
      else
        format.html { render :edit }
        format.json { render json: @alpha_alpha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_alphas/1
  # DELETE /alpha_alphas/1.json
  def destroy
    @alpha_alpha.destroy
    respond_to do |format|
      format.html { redirect_to alpha_alphas_url, notice: 'Alpha alpha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_alpha
      @alpha_alpha = AlphaAlpha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_alpha_params
      params.require(:alpha_alpha).permit(:alpha_framework_id, :alpha_alpha_def_id)
    end
end
