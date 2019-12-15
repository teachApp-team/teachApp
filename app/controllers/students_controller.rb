class StudentsController < ApplicationController
  def new
    @student= Student.new
    @teachers = Teacher.all
  end

  def create
    @student= Student.new(student_params)
    if @student.save
      redirect_to stu_mypage_path
      session[:stu_id] = @student.id
    else
      redirect_to new_student_path
    end
  end
  

  def show
    @student = Student.find_by(id: params[:id])
    @score = @student.scores.new
    @types = Test
  end
  
  private
  def student_params
    params.require(:student).permit(:name,:teacher_id, :password, :password_confirmation)
  end
   
  
end
