class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@releases = Release.all
  end
end
