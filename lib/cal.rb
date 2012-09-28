class Cal
  attr_reader :month
  attr_reader :year

  def initialize( month, year )
    @month = month.to_i
    @year = year.to_i
    @has_sixth_line = false
    @only_has_4_lines = false
  end

  def month_name
    months = %w[January February March April May June July August September October November December]
    myMonthName = months[@month.to_f-1]
  end

  def leap_year?
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

  def days_in_feb
    if leap_year?
      daysInFeb = 29
    else
      daysInFeb = 28
    end
  end

  def number_days_in_month
    daysInFeb = days_in_feb
    daysInMonth = [31, daysInFeb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    daysInMonth[month - 1]      
  end

  def first_day
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
    
  end

  def first_day_index
    if first_day.zero?
      first_day_index = 6
    else
      first_day_index = first_day - 1
    end
  end

  def weekday_offset
    if first_day_index == 0
      weekday_offset = 14
    elsif first_day_index == 1
      weekday_offset = 12
    elsif first_day_index == 2
      weekday_offset = 10
    elsif first_day_index == 3
      weekday_offset = 8
    elsif first_day_index == 4
      weekday_offset = 6
    elsif first_day_index == 5
      weekday_offset = 4
    else
      weekday_offset = 2
    end
    weekday_offset
  end    

  def print_headers
    "\n     #{month_name} #{year}\nSu Mo Tu We Th Fr Sa\n"
  end

  def print_line_1
    line_1 = ""
    first_day_index.times do 
      line_1 += "   "
    end
    (1..(7 - first_day_index)).each do |i| 
      line_1 += " #{i} "
    end
      line_1.rstrip + "\n"
  end

  def print_line_2
    line_2 = ""
    ((8 - first_day_index)..(first_day_index + weekday_offset)).each do |i|
      if i < 9
        line_2 += " #{i} "
      else
        line_2 += " #{i}"
      end 
    end
    line_2.rstrip + "\n"
  end

  def print_line_3
    line_3 = ""
    ((15 - first_day_index)..(first_day_index + weekday_offset + 7)).each do |i|
      if i == 9 
        line_3 += " #{i} "
      else
        line_3 += "#{i} "
      end
    end
    line_3.rstrip + "\n"
  end

  def print_line_4
    line_4 = ""
    if number_days_in_month == (first_day_index + weekday_offset + 14)
      @only_has_4_lines = true
    end 
    ((22 - first_day_index)..(first_day_index + weekday_offset + 14)).each do |i|
    line_4 += "#{i} "
    end
    line_4.rstrip + "\n"
  end

  def print_line_5
    line_5 = ""
    if @only_has_4_lines == true
      line_5 = "                    \n"
    else
      ((31 - first_day_index - 2)..(number_days_in_month)).each do |i|
        if i > (31 - first_day_index - 2) + 6
           @has_sixth_line = true
          break
        end
        line_5 += "#{i} "
        end
        line_5 = line_5.rstrip + "\n"
      end
  line_5
  end

  def print_line_6
    line_6 = ""
    if @has_sixth_line == true
       ((31 - first_day_index - 2 + 7)..(number_days_in_month)).each do |i|
        line_6 += "#{i} "
      end
    else
      line_6 = "                    "
    end
    line_6 += "                    \n"
  end

  def print_all
     print_headers +  print_line_1 + print_line_2 + print_line_3 + print_line_4 + print_line_5 + print_line_6
  end
end
month1 = Cal.new(ARGV[0], ARGV[1])
puts month1.print_all

