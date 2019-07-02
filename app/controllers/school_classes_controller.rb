class SchoolClassesController < ApplicationController
  def new
    #get, need form
    @schoolclass = SchoolClass.new
  end

  def create
    #post
    @schoolclass = SchoolClass.create(allowed_params)
    redirect_to school_class_path(@schoolclass)
  end

  def show
    #get
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    #get, need form
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    #patch
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(allowed_params)
    redirect_to school_class_path
  end

  private
  def allowed_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
