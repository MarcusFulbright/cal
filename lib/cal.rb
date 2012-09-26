class Cal
  attr_reader :month
  attr_reader :year

  def initialize( month, year )
    @month = month
    @year = year
  end

    def monthName
      months = %w[January February March April May June July August September October November December]
      myMonthName = months[@month.to_f-1]
    end

    def numDaysInMonth
      daysInFeb = 0
      daysInMonth = [31, daysInFeb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
      myNumDays = daysInMonth[month - 1]
    end

    def leapYear?
      if @year % 400 == 0
        true
      elsif @year % 100 == 0
        false
      elsif @year % 4 == 0
        true
      else
        false
      end
    end

    def daysInFeb?
      if leapYear?
        daysInFeb = 29
      else
        daysInFeb = 28
      end
    end

  def firstDay?
    months = %w[march april may june july august september october november december january february]
    weekdays = %w[Saturday Sunday Monday Tuesday Wednesday Thursday Friday]
    day_of_month = 1
    zellerYear = if @month == 1 || @month ==2
                            zellerYear = @year - 1
                          else
                            zellerYear = @year
                          end

    zellerMonth = if @month == 1
                            zellerMonth = 13
                          elsif @month == 2
                            zellerMonth = 14
                          else
                            zellerMonth = @month
                          end

    march_offset = ((zellerMonth +1) * 26/10).floor
    leap_year_offset = (zellerYear/4).floor + 6 *(zellerYear/100).floor + (zellerYear/400).floor
    day_of_week = (day_of_month + march_offset + zellerYear + leap_year_offset) %7
    weekdays[day_of_week]
end

end
