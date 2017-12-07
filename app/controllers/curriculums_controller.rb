class CurriculumsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    @curricula = Curriculum.all

  end

  def show
    @curriculum = Curriculum.find(params[:id])
  end

  def new
    @curriculum = Curriculum.new
  end

  def create
    @curriculum = Curriculum.create(curriculum_params)
    @curriculum.user_id = session[:user_id]
    # byebug
    if @curriculum.valid?
       @curriculum.save
    params[:curriculum][:book_ids].each do |id|
        CurriculumBook.create(book_id: id, curriculum_id: @curriculum.id)
    end
    redirect_to curriculums_path
    else
       redirect_to new_curriculum_path
     end
  end

  def edit
  end

  private

  def curriculum_params
    params.require(:curriculum).permit(:title, :description)
  end

end
