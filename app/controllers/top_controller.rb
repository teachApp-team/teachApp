class TopController < ApplicationController
  def home
    @center_date = Date.new(2020, 1, 18)
    @date = @center_date - Date.current
    @date_of_examination = @date.to_i
  end
end
