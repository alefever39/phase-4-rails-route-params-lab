class StudentsController < ApplicationController
  def index
    if params[:name]
      students = Student.find_by(first_name: params[:name])
      students = Student.find_by(last_name: params[:name]) if (!students)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end
end
