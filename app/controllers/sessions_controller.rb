class SessionsController < ApplicationController
  def login_form
  end
  
  def create
    student = Student.find_by(name: params[:session][:name])
    if student && student.authenticate(params[:session][:password])
      session[:stu_id] = student.id
      redirect_to "students/show/#{student.id}"
    else
      redirect_to stu_login_path
    end
  end

  def destroy
    session.delete(:stu_id)
    redirect_to root_path
  end
end
