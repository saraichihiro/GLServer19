class AlphaEvidencesController < ApplicationController
  before_action :set_alpha_evidence, only: [:new, :show, :edit, :update]

  # 後日、オンデマンドで AlphaEvidence を生成する機能を追加するかもしれないので残しておく
  # GET /alpha_evidences/new
  def new
  end

  # GET /alpha_evidences/1
  # GET /alpha_evidences/1.json
  def show
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
    if params[:alpha_evidence][:completed] == "1"
      # completed が true に変更されたとき、completed_at に現在日時を設定する
      if @alpha_evidence.completed == false
        @alpha_evidence.completed_at = DateTime.now
        # completed が true のときに根拠が変更されたとき、completed_at に現在日時を設定する
      elsif params[:alpha_evidence][:document] != @alpha_evidence.document
        @alpha_evidence.completed_at = DateTime.now
      end
    end

    respond_to do |format|
      if @alpha_evidence.update(alpha_evidence_params)
        format.html { redirect_to alpha_state_alpha_items_url(@alpha_state), notice: 'Alpha evidence was successfully updated.' }
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
      @alpha_alpha = @alpha_state.alpha_alpha
      @project = @alpha_alpha.alpha_framework.project
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_evidence_params
      params.require(:alpha_evidence).permit(:document, :completed, :scrum_member_id, :alpha_item_id)
    end
end
