class BugsController < ApplicationController

  before_action :set_bug, only: %i[ show edit update destroy ]
  load_and_authorize_resource :nested => :bug
  load_and_authorize_resource param_method: :my_sanitizer
  # GET /bugs or /bugs.json
  def index
    if !current_user.developer?
      @bugs = Bug.all
    else
      render(
        html: "<script>alert('UnAuthorized Access!')</script>".html_safe,
        layout: 'application'
      )
   
    end
  end

  # GET /bugs/1 or /bugs/1.json
  def show
  end

  # GET /bugs/new
  def new
    authorize! :create, @bug
    @bug = Bug.new
  end

  # GET /bugs/1/edit
  def edit
    authorize! :update, @bug
  end

  # POST /bugs or /bugs.json
  def create
    @bug = Bug.new(bug_params)

    respond_to do |format|
      if @bug.save
        format.html { redirect_to @bug, notice: "Bug was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugs/1 or /bugs/1.json
  def update
    authorize! :update, @bug
    respond_to do |format|
      if @bug.update(bug_params)
        format.html { redirect_to @bug, notice: "Bug was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end


  end

  def destroy
    authorize! :destroy, @bug
    @bug.destroy
    respond_to do |format|
      format.html { redirect_to bugs_url, notice: "Bug was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug
      @bug = Bug.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bug_params
      params.require(:bug).permit(:title, :description, :screenshot, :bugtype, :status, :user_id, :project_id)
    end

      private

    def my_sanitizer
      params.require(:bug).permit(:title, :description, :screenshot, :bugtype, :status, :user_id, :project_id)
    end

end
