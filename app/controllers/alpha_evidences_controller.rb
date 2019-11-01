class AlphaEvidencesController < ApplicationController
  before_action :set_alpha_evidence, only: [:show, :edit, :update]

  # GET /alpha_evidences/1
  # GET /alpha_evidences/1.json
  def show
  end

  # GET /alpha_evidences/1/edit
  def edit
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_evidence
      @alpha_item = AlphaItem.find(params[:alpha_item_id])
      @alpha_evidence = @alpha_item.alpha_evidence
      @alpha_state = @alpha_item.alpha_state
      byebug
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_evidence_params
      params.require(:alpha_evidence).permit(:document, :scrum_member_id, :alpha_item_id)
    end
end
