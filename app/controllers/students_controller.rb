class StudentsController < ApplicationController
  def index 
    @students = Student.all
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(allowed_params)
    @student.save
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(allowed_params)
    redirect_to students_path
  end

  private

  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
