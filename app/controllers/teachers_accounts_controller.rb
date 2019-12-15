class TeachersAccountsController < ApplicationController
  def show
    @students = Student.where(teacher_id: current_teacher.id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
