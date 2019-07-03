class SchoolClassesController < ApplicationController
  def index 
    @school_classes = SchoolClass.all
  end
  
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(allowed_params)
    @school_class.save
    redirect_to school_classes_path
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class = SchoolClass.update(allowed_params)
    redirect_to school_classes_path
  end

  private

  def allowed_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
