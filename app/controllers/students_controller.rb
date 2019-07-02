class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  def create
    @student = Student.create(
      first_name: params["student"]["first_name"],
      last_name: params["student"]["last_name"],
    )
    redirect_to student_path(@student)
  end

  def show
  end

  def update
    @student.update(allowed_params)
    redirect_to student_path(@student)
  end

  def edit
  end

  def find_student
    @student = Student.find(params[:id])
  end

  private

  def allowed_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
