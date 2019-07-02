class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(allowed_params)
    if @student.valid?
      @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(allowed_params)
    redirect_to student_path
  end

  private
  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
