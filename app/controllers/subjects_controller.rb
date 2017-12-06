class SubjectsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    @subjects = Subject.all
  end

  def show

    @subject = Subject.find(params[:id])

  end

end
