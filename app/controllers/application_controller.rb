class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	render :'/welcome/index.html.erb'
  end
end
