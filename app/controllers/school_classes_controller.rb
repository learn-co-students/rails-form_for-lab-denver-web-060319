class SchoolClassesController < ApplicationController
  before_action :find_school_class, only: [:show, :update, :edit]

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(allowed_params)
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  def update
    @school_class.update(allowed_params)
    redirect_to school_class_path(@school_class)
  end

  #   def destroy
  #     @school_class.destroy
  #     redirect_to school_class_path
  #   end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def find_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  private

  def allowed_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
