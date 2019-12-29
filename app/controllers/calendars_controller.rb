class CalendarsController < ApplicationController
  
  def show
    @number = params[:num]
  end
  
  def nextmonth
    redirect_to "/calendars/show"
  end
end
