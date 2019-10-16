class ScrumMembersController < ApplicationController
  before_action :set_scrum_member, only: [:show, :edit, :update, :destroy]
  before_action :set_project,      only: [:index, :new, :create]

  # GET /projects/:project_id/scrum_members
  # GET /projects/:project_id/scrum_members.json
  def index
    @scrum_members = @project.scrum_members
  end

  # GET /scrum_members/1
  # GET /scrum_members/1.json
  def show
  end

  # GET /projects/:project_id/scrum_members/new
  def new
    all = User.all.to_ary
    sms = @project.scrum_members

    users = Array.new(all)

    all.each do |al|
      sms.each do |sm|
        if al.id == sm.user_id
         users.delete(al)
       end
     end
   end

    #byebug
    @project.scrum_members.each {|u| u.add_item = false}
    users.each {|u| @project.scrum_members.build(project_id: @project.id, user_id: u.id, role: 2, selected_item: false, add_item: true) }
     #byebug
     #logger.debug "---- #{users} #{scrum_members} ----"
   end

  # GET /scrum_members/1/edit
  def edit
  end

  # POST /projects/:project_id/scrum_members
  # POST /projects/:project_id/scrum_members.json
  def create
    # @scrum_member = ScrumMember.new(scrum_member_params)

    respond_to do |format|
      if create_many
        format.html { redirect_to scrum_members_path(get_current_project_id), notice: 'Scrum member was successfully created.' }
        format.json { render :index, status: :created, location: scrum_members_path(get_current_project_id) }
      else
        format.html { redirect_to scrum_members_path(get_current_project_id), notice: 'Scrum member was unsuccessfully created.'}
        format.json { render json: @scrum_member.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_many
    success = true

    return false unless params[:project]

    #scrum_members2 = params[:project][:scrum_members_attributes]
    scrum_members = project_scrum_member_params
    scrum_members[:scrum_members_attributes].to_hash
    #byebug
    scrum_members[:scrum_members_attributes].to_hash.each_value {|val| 
      if val["selected_item"] == "1" then
        sm = @project.scrum_members.new(val)
        if !sm.save then
          success = false
          break
        end 
      end
    }
    return success
  end

  # PATCH/PUT /scrum_members/1
  # PATCH/PUT /scrum_members/1.json
  def update
    respond_to do |format|
      if @scrum_member.update(scrum_member_params)
        format.html { redirect_to @scrum_member, notice: 'Scrum member was successfully updated.' }
        format.json { render :show, status: :ok, location: @scrum_member }
      else
        format.html { render :edit }
        format.json { render json: @scrum_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrum_members/1
  # DELETE /scrum_members/1.json
  def destroy
    @scrum_member.destroy
    respond_to do |format|
      format.html { redirect_to scrum_members_url(@project), notice: 'Scrum member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_scrum_member
      @scrum_member = ScrumMember.find(params[:id])
      @project = @scrum_member.project
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrum_member_params
      params.require(:scrum_member).permit(:role, :description, :project_id, :user_id, :selected_item)
    end

    def project_scrum_member_params
      params.require(:project).permit(scrum_members_attributes: [:role, :document, :selected_item, :user_id, :project_id])
    end
  end
