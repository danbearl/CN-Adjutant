class TimeLogsController < ApplicationController
  def show
    @time_log = TimeLog.find(params[:id])
    
    respond_to do |format|
      format.html #show.html.erb
      format.json {render :json => @time_log }
    end
  end

  def edit
  	@time_log = TimeLog.find(params[:id])
  end

  def new
  	@project = Project.find(params[:project_id])
	@time_log = TimeLog.new
	
    respond_to do |format|
      format.html #new.html.erb
      format.json { render :json => @time_log }
    end
  end

  def create
    @project = Project.find(params[:project_id])
    @time_log = @project.time_logs.new(params[:time_log])

    respond_to do |format|
      if @time_log.save
        format.html { redirect_to(@project, :notice => 'Time Log was successfully saved.') }
        format.json { render :json => @project, :status => :created, :location => :project }
      else
        format.html {render :action => "new"}
        format.json {render :json => @time_log.errors, :status => :unprocessable_entity}
      end
    end
  end
  
  def destroy
    @project = Project.find(params[:project_id])
    @time_log = TimeLog.find(params[:id])

    @time_log.destroy

    respond_to do |format|
      format.html { redirect_to @project}
      format.json { head :no_content }
    end
  end

  def update
    @time_log = TimeLog.find(params[:id])

    respond_to do |format|
      if @time_log.update_attributes(params[:time_log])
        format.html {redirect_to([@time_log.project], :notice => "Time Log updated successfully.")}
        format.json {head :no_content}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @time_log.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def index
  end
  
end
