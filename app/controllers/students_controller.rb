class StudentsController < ApplicationController

  def index
    if params[:name]
      @students = Student.by_name(params[:name])
    else
      @students = Student.all
    end
    
    render json: @students
  end
  
  def show
    id = params[:id]
    render json: Student.find(id)
  end

end
