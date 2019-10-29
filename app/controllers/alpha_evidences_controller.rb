class AlphaEvidencesController < ApplicationController
  before_action :set_alpha_evidence, only: [:show, :edit, :update, :destroy]

  # GET /alpha_evidences
  # GET /alpha_evidences.json
  def index
    @alpha_evidences = AlphaEvidence.all
  end

  # GET /alpha_evidences/1
  # GET /alpha_evidences/1.json
  def show
  end

  # GET /alpha_evidences/new
  def new
    @alpha_evidence = AlphaEvidence.new
  end

  # GET /alpha_evidences/1/edit
  def edit
  end

  # POST /alpha_evidences
  # POST /alpha_evidences.json
  def create
    @alpha_evidence = AlphaEvidence.new(alpha_evidence_params)

    respond_to do |format|
      if @alpha_evidence.save
        format.html { redirect_to @alpha_evidence, notice: 'Alpha evidence was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_evidence }
      else
        format.html { render :new }
        format.json { render json: @alpha_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_evidences/1
  # PATCH/PUT /alpha_evidences/1.json
  def update
    respond_to do |format|
      if @alpha_evidence.update(alpha_evidence_params)
        format.html { redirect_to @alpha_evidence, notice: 'Alpha evidence was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_evidence }
      else
        format.html { render :edit }
        format.json { render json: @alpha_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_evidences/1
  # DELETE /alpha_evidences/1.json
  def destroy
    @alpha_evidence.destroy
    respond_to do |format|
      format.html { redirect_to alpha_evidences_url, notice: 'Alpha evidence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_evidence
      @alpha_evidence = AlphaEvidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_evidence_params
      params.require(:alpha_evidence).permit(:document, :scrum_member_id, :alpha_item_id)
    end
end
