class Cal
  attr_reader :month
  attr_reader :year

  def initialize( month, year )
    @month = month.to_i
    @year = year.to_i
    @only_has_4_lines = false
  end

  def month_name
    months = %w[January February March April May June July August September October November December]
    myMonthName = months[@month-1]
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
    (leap_year?) ? (daysInFeb = 29) : (daysInFeb = 28)
  end

  def number_days_in_month
    daysInMonth = [31, days_in_feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    daysInMonth[month - 1]
  end

  def first_day
    day_of_month = 1
    zellerYear = (@month == 1 || @month ==2) ? (zellerYear = @year - 1) : (zellerYear = @year)
    zellerMonth = (@month == 1 || @month == 2) ? (zellerMonth = @month + 12) : (zellerMonth = @month)
    day_of_week = (day_of_month + ((zellerMonth +1) * 26/10).floor + zellerYear + (zellerYear/4).floor + 6 *(zellerYear/100).floor + (zellerYear/400).floor) %7
  end

  def first_day_index
    (first_day.zero?) ? (first_day_index = 6) : (first_day_index = first_day - 1)
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
    (1..(7 - first_day_index)).each do |i|
      line_1 += " #{i} "
    end
      line_1 = line_1.rstrip + "\n"
      line_1.rjust(21)
  end

  def print_line_2
    line_2 = ""
    ((8 - first_day_index)..(first_day_index + weekday_offset)).each do |i|
    (i < 9) ? (line_2 += " #{i} ") : (line_2 += " #{i}")
    end
    line_2.rstrip + "\n"
  end

  def print_line_3
    line_3 = ""
    ((15 - first_day_index)..(first_day_index + weekday_offset + 7)).each do |i|
    (i == 9) ? (line_3 += " #{i} ") : (line_3 += "#{i} ")
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
      line_5 = ""
    else
      ((31 - first_day_index - 2)..(number_days_in_month)).each do |i|
        if i > (31 - first_day_index - 2) + 6
          break
        end
        line_5 += "#{i} "
        end
        line_5 = line_5.rstrip
      end
  line_5.ljust(20) + "\n"
  end

  def print_line_6
    line_6 = ""
    if number_days_in_month > (31 - first_day_index - 2) + 6
       ((31 - first_day_index - 2 + 7)..(number_days_in_month)).each do |i|
        line_6 += "#{i} "
      end
    end
    line_6.ljust(20) + "\n"
  end

  def print_all
     print_headers +  print_line_1 + print_line_2 + print_line_3 + print_line_4 + print_line_5 + print_line_6
  end

end