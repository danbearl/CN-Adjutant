class NotesController < ApplicationController
  def show
    @note = Note.find(params[:id])
    
    respond_to do |format|
      format.html #show.html.erb
      format.json {render :json => @note }
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
	@note = Note.new
	
    respond_to do |format|
      format.html #new.html.erb
      format.json { render :json => @note }
    end
  end
  
  def create
    @project = Project.find(params[:project_id])
    @note = @project.notes.new(params[:note])

    respond_to do |format|
      if @note.save
        format.html { redirect_to(@project, :notice => 'Note was successfully saved.') }
        format.json { render :json => @project, :status => :created, :location => :project }
      else
        format.html {render :action => "new"}
        format.json {render :json => @note.errors, :status => :unprocessable_entity}
      end
    end
  end
  
  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html {redirect_to([@note.project, @note], :notice => "Note updated successfully.")}
        format.json {head :no_content}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @note.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @note = Note.find(params[:id])

    @note.destroy

    respond_to do |format|
      format.html { redirect_to @project}
      format.json { head :no_content }
    end
  end
  def index
  end
end
