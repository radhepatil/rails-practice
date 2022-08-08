class StudentsController < ActionController::Base


  def index
    @students = Student.all
    @courses = Course.all
    @colleges = College.all
  end

  def new
    @students = Student.new
  end

  def show
    @students = Student.find(params[:id])
  end

  def create
    debugger
    @students = Student.new(params[:students])
    if @students.save
      render :new
    end
  end
end
