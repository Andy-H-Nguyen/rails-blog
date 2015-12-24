class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?
  
  def current_user
    #return current_user if current_user exists, else find a user session if session exists
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    #true if current_user exists, falses otherwise
    !!current_user
  end
  
  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in"
      redirect_to root_path
    end
  end
end
