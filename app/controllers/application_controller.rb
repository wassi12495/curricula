class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorized

  helper_method :logged_in?


  def current_user
     #session[:user_id] = nil
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    if logged_in?
    else
      redirect_to login_path
    end
  end
end
