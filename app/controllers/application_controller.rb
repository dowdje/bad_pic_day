class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def index
  	render :'/welcome/index.html.erb'
  end

  def current_user
    # return the user who is logged in
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) 
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate
    redirect_to '/' unless logged_in?
    # if session[:user_id]
    #   xomething
    # else
    #   redirect_to root_path
    # @user = User.find_by(name: params[:user][:name], password: params[:user][:password])
  end

end
