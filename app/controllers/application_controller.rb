class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_uder
    if sessions[:user_id]
      @current_user ||= User.find(seesion[:user_id])
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
