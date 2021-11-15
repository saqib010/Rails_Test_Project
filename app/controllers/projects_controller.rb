class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :home]
  def home
    @myprojects = Project.all
  end

  def new
    @myproject = Project.new
    # adding new field for multiple attributes of techologies 
  end

  def show
    find
  end

  def create
    @myproject = Project.new(proj_params)

    #@myproject.user = current_user

    respond_to do |format|
      if @myproject.save
        format.html { redirect_to @myproject, notice: "Project was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def proj_params
     params.permit(:name)
  end
  
  def find
    @myproject = Project.find(params[:id])
  end

end
