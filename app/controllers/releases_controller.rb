class ReleasesController < ApplicationController
	before_action :authenticate_user!
  def new
  	@items = Item.all
  	@release = Release.new
  end

  def create
  	binding.pry
  end

  private

  def release_params
    params.require(:release).permit(:version,release_item_attributes: [item_ids:[]])
  end
end
