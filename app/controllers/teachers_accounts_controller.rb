class TeachersAccountsController < ApplicationController
  def show
    @teacher = Teacher.find_by(name: "Fujita")
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
