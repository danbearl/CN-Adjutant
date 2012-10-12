class ProjectsController < ApplicationController
  expose(:client)
  expose(:projects)
  expose(:project)
  expose(:owner) {project.client}
  expose(:time_log)
  expose(:time_logs)

  def create
    @project = client.projects.new(params[:project])
    if @project.save
      redirect_to client_project_path(client, @project), notice: "Project successfully created."
    else
      render "new"
    end
  end

  def destroy
    project.destroy
    redirect_to client_path(client), notice: "Project successfully deleted."
  end

  def update

      if project.save
        redirect_to project, notice: "Project successfully updated."
      else
        render 'edit'
      end
  end

end
