class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]


  def index


  end

  def show

    @user = User.find(session[:user_id])

  end

end
