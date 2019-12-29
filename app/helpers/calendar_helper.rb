require "date"
module CalendarHelper
    def get_all_month_day
        number = Date.today.at_end_of_month.day
        number
    end
    
    def get_start_day
        number = Date.today.at_beginning_of_month.cwday - 1
        number
    end
end