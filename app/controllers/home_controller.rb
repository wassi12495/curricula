class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]


  def index

    @users = User.all
    @curricula = Curriculum.all
    @books = Book.all
  end

  def add_curriculum_to_lib

    @user_id = session[:user_id]
    Follower.create(user_id: @user_id, curriculum_id: params[:curriculum_id])
    redirect_to curriculum_path(params[:curriculum_id])
  end
  def curriculum_library
  end

  def show

    @user = User.find(session[:user_id])

  end

end
