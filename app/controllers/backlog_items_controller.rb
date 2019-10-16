class BacklogItemsController < ApplicationController
  before_action :all_done, only: [:show_pbl, :show_sbl] 
  before_action :set_backlog_item, only: [:show_pbl, :show_sbl, :edit_pbl, :edit_sbl, :update, :destroy]

  # GET /backlog_items
  # GET /backlog_items.json
  def index_pbl
    @backlog_items = BacklogItem.all

    @entrant = ScrumMember.find_by(user_id: current_user.id, project_id: get_current_project_id)
    @sprint = Sprint.find_by(project_id: get_current_project_id)

  end

  def index_sbl
    @backlog_items = BacklogItem.all
    @sprint = Sprint.find(params[:sprint_id])
  end

  # GET /backlog_items/1
  # GET /backlog_items/1.json
  def show_pbl
    @author = ScrumMember.find(@backlog_item.blog_author_id)

    @sbl = BacklogItem.where(backlog_item_id: @backlog_item.id)
  end

  def show_sbl
    @author = ScrumMember.find(@backlog_item.blog_author_id)
    
    if @backlog_item.backlog_item_id != nil
      @pbl = BacklogItem.find(@backlog_item.backlog_item_id)
    end

    if @backlog_item.assign_to_id != nil
      @assign = ScrumMember.find(@backlog_item.assign_to_id)
    end
    all_done
  end

  # GET /backlog_items/new
  def new_pbl
    @project = Project.find(get_current_project_id)
    @backlog_item = @project.backlog_items.build
  end

  def new_sbl
    @project = Project.find(get_current_project_id)
    @pbl = BacklogItem.find(params[:backlog_item_id])
    @backlog_item = @project.backlog_items.build
  end

  # GET /backlog_items/1/edit
  def edit_pbl
  end

  def edit_sbl
  end

  # POST /projects/:project_id/backlog_items
  # POST /projects/:project_id/backlog_items.json
  def create
    @backlog_item = BacklogItem.new(backlog_item_params)
    @project = Project.find(params[:project_id])
    #byebug
    respond_to do |format|
      if @backlog_item.save
        #byebug
        if @backlog_item.itemType == 0
          format.html { redirect_to pbl_path(get_current_project_id), notice: 'PBL was successfully created.' }
          format.json { render :show, status: :created, location: @backlog_item }
        else
          check_state(@backlog_item)
          format.html { redirect_to show_pbl_path(@backlog_item.backlog_item_id), notice: 'SBL was successfully created.' }
          format.json { render :show, status: :created, location: @backlog_item }
        end
      else
        #byebug
        if @backlog_item.itemType == 0
          format.html { render :new_pbl }
          format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
        else 
          @pbl = BacklogItem.find(@backlog_item.backlog_item_id)
          format.html { render :new_sbl }
          format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
          
        end
      end
    end
  end

  # PATCH/PUT /backlog_items/1
  # PATCH/PUT /backlog_items/1.json
  def update
    respond_to do |format|
      if @backlog_item.update(backlog_item_params)
        if @backlog_item.itemType == 0

         format.html { redirect_to show_pbl_path(@backlog_item), notice: 'PBL was successfully updated.' }
         format.json { render :show, status: :ok, location: @backlog_item }
       end

       if @backlog_item.itemType == 1 
        check_state(@backlog_item)

        format.html { redirect_to show_sbl_path(@backlog_item), notice: 'SBL was successfully updated.' }
        format.json { render :show, status: :ok, location: @backlog_item }
      end

    else
       if @backlog_item.itemType == 0
        format.html { render :edit_pbl }
        format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
      else
        format.html { render :edit_sbl }
        format.json { render json: @backlog_item.errors, status: :unprocessable_entity }
      end
    end
  end
end

  # DELETE /backlog_items/1
  # DELETE /backlog_items/1.json
  def destroy
    @backlog_item.destroy
    respond_to do |format|
      format.html { redirect_to pbl_path(get_current_project_id), notice: 'Backlog item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backlog_item
      @backlog_item = BacklogItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def backlog_item_params
      params.require(:backlog_item).permit(:itemType, :no, :seq, :create_at, :dev_type, :state, :estimate, :started_at, :ended_at, :description, :supplement, :priority, :value, :project_id, :sprint_id, :blog_author_id, :assign_to_id, :backlog_item_id)
    end

    def check_state(item)

      if item.assign_to_id.nil? == false && item.state <= 1
        item.state = 1
      end

      if item.state == 2 && item.started_at == nil
        item.started_at = Time.now()
      end

      if item.state == 3 && item.ended_at == nil
        item.ended_at = Time.now()
      end
      item.save
    end

    def all_done
      case action_name
      when "show_sbl"
        @sb = BacklogItem.find(params[:id])
        @pb = BacklogItem.find(@sb.backlog_item_id)
        @sbl = BacklogItem.where(backlog_item_id: @pb.id)
      when "show_pbl"
        @pb = BacklogItem.find(params[:id])
        @sbl = BacklogItem.where(backlog_item_id: params[:id])
      end

      holdfl = false
      donefl = false
      doingfl = false
      todofl = false
      nilfl = false

      @sbl.each do |s|
        case s.state
        when 4
          holdfl = true
        when 3
          donefl = true
        when 2
          doingfl = true
        when 1
          todofl = true
        when 0
          nilfl = true
        end
      end

      if nilfl == true && todofl == false && doingfl == false && donefl == false && holdfl == false
        @pb.state = 0
      else
        if holdfl == true
          @pb.state = 4
        else
          if todofl == true && doingfl == false &&  donefl == false
            @pb.state = 1
          end
          if doingfl == true || ( (nilfl == true || todofl == true) && doingfl == false && donefl == true )
            @pb.state = 2
          end
          if nilfl == false && todofl == false && doingfl == false && donefl == true && holdfl == false
            @pb.state = 3
          end
        end
      end
      @pb.save
    end
end