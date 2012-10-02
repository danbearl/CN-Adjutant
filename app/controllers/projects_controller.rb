class ProjectsController < ApplicationController
  def new
    @client = Client.find(params[:client_id])
	@project = Project.new
	
    respond_to do |format|
      format.html #new.html.erb
      format.json { render :json => @project }
    end
  end
  
  def create
    @client = Client.find(params[:client_id])
    @project = @client.projects.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to(@client, :notice => 'Project was successfully saved.') }
        format.json { render :json => @client, :status => :created, :location => :client }
      else
        format.html {render :action => "new"}
        format.json {render :json => @project.errors, :status => :unprocessable_entity}
      end
    end
  end

  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html #index.html.erb
      format.json {render :json => @project }
    end  
  end

  def edit
    @project = Project.find(params[:id])
  end
  
  def update
  end
  
  def destroy
    @client = Client.find(params[:client_id])
    @project = Project.find(params[:id])

    @project.destroy

    respond_to do |format|
      format.html { redirect_to @client}
      format.json { head :no_content }
    end
  end

  def index
    @client = Client.find(params[:client_id])
    @projects = @client.projects

    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @projects }
    end
  end
  
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html {redirect_to([@project.client, @project], :notice => "Project updated successfully.")}
        format.json {head :no_content}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @client.errors, :status => :unprocessable_entity }
      end
    end
  end
end
