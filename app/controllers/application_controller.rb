class ApplicationController < ActionController::Base
  
    helper_method :current_user, :logged_in? # helper_method makes them available for all the views
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] # ||= means if not, here means if there is no current user logged in, do the following
  end
  
  def logged_in?
    !!current_user # !! transform anything to a boolean
  end
  
  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end 
end

