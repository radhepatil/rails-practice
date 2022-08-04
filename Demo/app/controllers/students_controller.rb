class StudentsController < ActionController::Base
  def index
    @students = Student.all
    @courses = Course.where(name: 'DBMS')
    @colleges = College.where(name: 'PIEMR')
  end

  def new
    @students = Student.new
  end

  def create
    @students = Student.new(
      name: params[:student][:name],
      college_id: params[:student][:college_id]
      )
    if @students.save
      redirect_to students_path
    else
      render :new
    end
  end

end
