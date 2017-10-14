module Publicview
class ProjectsController < PublicviewController

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
     @project = Project.friendly.find(param[:id])
  end

 
end
end