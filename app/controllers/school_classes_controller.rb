class SchoolClassesController < ApplicationController  
    before_action :find_school, only: [:show, :edit, :update]
  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(allowed_params)
      redirect_to school_class_path(@school_class)
  end

  def show
  end
  

  def edit
  end

  def update
    #@school_class = SchoolClass.find(params[:id])
    @school_class.update(allowed_params)
    redirect_to school_class_path(@school_class)
  end

  private
  def find_school
    @school_class = SchoolClass.find(params[:id])
  end

  def allowed_params
    params.require(:school_class).permit!
  end


end
