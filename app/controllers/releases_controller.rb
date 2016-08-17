class ReleasesController < ApplicationController
	before_action :authenticate_user!
  before_action :set_release, only: [:show]
  before_action :set_tasks, only: [:new,:create]

  def new	
  	@release = Release.new
  end

  def create
    @release = Release.new(release_params)
    respond_to do |format|
      if @release.save
        format.html { redirect_to @release, notice: 'release was successfully created.' }        
      else
        format.html { render :new }        
      end
    end
  end

  def show
  end

  private
    def set_release
      @release = Release.find(params[:id])
    end

    def set_tasks
      @tasks = Task.all
    end

    def release_params
      params.require(:release).permit(:version,task_ids: [])
    end
end
