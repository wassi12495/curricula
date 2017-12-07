class HomeController < ApplicationController

  skip_before_action :authorized, only: [:index]


  def index

    @users = User.all
    @curricula = Curriculum.all
    @books = Book.all
  end

  def add_curriculum_to_lib

    @user_id = session[:user_id]
    @curr = Curriculum.find(params[:curriculum_id])
    user = User.find(@user_id)
    if @curr.followed?(@user_id)

      to_delete = Follow.where(curriculum_id: @curr.id, user_id: @user_id)
      
      Follow.delete(to_delete)
      redirect_to curriculum_path(params[:curriculum_id])
    else
      Follow.create(user_id: @user_id, curriculum_id: @curr.id)
      redirect_to curriculum_path(params[:curriculum_id])
    end
  end





  def curriculum_library
  end

  def show

    @user = User.find(session[:user_id])

  end

end
