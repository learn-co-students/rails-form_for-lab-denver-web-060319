class SchoolClassesController < ApplicationController
  def new
    @schoolclass = SchoolClass.new
  end

  def create
    # byebug
    @schoolclass = SchoolClass.create(
      title: params["school_class"]["title"], 
      room_number: params["school_class"]["room_number"]
      )
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params["id"])
    if !(params["school_class"]["title"] == nil) 
      @school_class.update(title: params["school_class"]["title"])
    elsif !(params["school_class"]["room_number"] == nil) 
      @school_class.update(room_number: params["school_class"]["room_number"])
    end
    redirect_to school_class_path(@school_class)
  end
end
