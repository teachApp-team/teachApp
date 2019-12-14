class StudentsController < ApplicationController
  def new
    @student= Student.new
  end

  def create
    @student= Student.new(student_params)
    if @student.save
      redirect_to stu_mypage_path
    else
      redirect_to new_student_path
    end
  end
  

  def show
  end
  
  private
  def student_params
    params.require(:student).permit(:name,:teacher_id, :password, :password_confirmation)
  end
   
  
end
