class ProjectsController < ApplicationController
  
  before_action :set_project, only: %i[ show edit update destroy ]
  load_and_authorize_resource :nested => :project
  load_and_authorize_resource param_method: :my_sanitizer

  def index
    if !current_user.developer?
      @projects = Project.all
    else
      render(
        html: "<script>alert('UnAuthorized Access!')</script>".html_safe,
        layout: 'application'
      )
   
    end
  end

  def show
    authorize! :read, @project
    @projects = set_project.bugs
    @projectName = set_project.name
  end


  def new
    authorize! :create, @project
    @project = Project.new
  end


  def edit
    authorize! :update, @project
  end

  def create
    authorize! :create, @project
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :update, @project
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "Project was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, @project
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
    end
  end

  private

    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:name)
    end


end
