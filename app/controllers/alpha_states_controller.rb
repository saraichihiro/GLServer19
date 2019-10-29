class AlphaStatesController < ApplicationController
  before_action :set_alpha_state, only: [:show, :edit, :update, :destroy]

  # GET /alpha_states
  # GET /alpha_states.json
  def index
    @alpha_states = AlphaState.all
  end

  # GET /alpha_states/1
  # GET /alpha_states/1.json
  def show
  end

  # GET /alpha_states/new
  def new
    @alpha_state = AlphaState.new
  end

  # GET /alpha_states/1/edit
  def edit
  end

  # POST /alpha_states
  # POST /alpha_states.json
  def create
    @alpha_state = AlphaState.new(alpha_state_params)

    respond_to do |format|
      if @alpha_state.save
        format.html { redirect_to @alpha_state, notice: 'Alpha state was successfully created.' }
        format.json { render :show, status: :created, location: @alpha_state }
      else
        format.html { render :new }
        format.json { render json: @alpha_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alpha_states/1
  # PATCH/PUT /alpha_states/1.json
  def update
    respond_to do |format|
      if @alpha_state.update(alpha_state_params)
        format.html { redirect_to @alpha_state, notice: 'Alpha state was successfully updated.' }
        format.json { render :show, status: :ok, location: @alpha_state }
      else
        format.html { render :edit }
        format.json { render json: @alpha_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alpha_states/1
  # DELETE /alpha_states/1.json
  def destroy
    @alpha_state.destroy
    respond_to do |format|
      format.html { redirect_to alpha_states_url, notice: 'Alpha state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alpha_state
      @alpha_state = AlphaState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alpha_state_params
      params.require(:alpha_state).permit(:completed, :completed_items, :completed_at, :alpha_alpha_id, :alpha_state_def_id)
    end
end
