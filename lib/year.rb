class Year
attr_reader :year

def initialize (year)
	@year = year.to_i
end

def row_1_headers
	"#{year}".rjust(32) + "\n" + "January".rjust(13) + "February".rjust(23) + "March".rjust(20)
end

def row_week_heads
	weekHeads = "\nSu Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa\n"
end

def row_2_headers
	"April".rjust(13) + "May".rjust(20) + "June".rjust(22)
end

def row_3_headers
	"July".rjust(14) + "August".rjust(23) + "September".rjust(23)
end

def row_4_headers
	"October".rjust(13) + "November".rjust(23) + "December".rjust(22)
end

def row1_line_1
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_1.chomp + "  " + month2.print_line_1.chomp + "  " + month3.print_line_1
end

def row1_line_2
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_2.chomp + "  " + month2.print_line_2.chomp + "  " + month3.print_line_2
end

def row1_line_3
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_3.chomp + "  " + month2.print_line_3.chomp + "  " + month3.print_line_3
end

def row1_line_4
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_4.chomp + "  " + month2.print_line_4.chomp + "  " + month3.print_line_4
end

def row1_line_5
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_5.chomp + "  " + month2.print_line_5.chomp + "  " + month3.print_line_5
end

def row1_line_6
	month1 = Cal.new(1, year)
	month2 = Cal.new(2, year)
	month3 = Cal.new(3, year)
	month1.print_line_6.chomp + "  " + month2.print_line_6.chomp + "  " + month3.print_line_6
end

def row_1
	row_1_headers + row_week_heads + row1_line_1 + row1_line_2 + row1_line_3 + row1_line_4 + row1_line_5 + row1_line_6
end

def row2_line_1
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_1.chomp + "  " + month5.print_line_1.chomp + "  " + month6.print_line_1
end

def row2_line_2
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_2.chomp + "  " + month5.print_line_2.chomp + "  " + month6.print_line_2
end

def row2_line_3
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_3.chomp + "  " + month5.print_line_3.chomp + "  " + month6.print_line_3
end

def row2_line_4
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_4.chomp + "  " + month5.print_line_4.chomp + "  " + month6.print_line_4
end

def row2_line_5
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_5.chomp + "  " + month5.print_line_5.chomp + "  " + month6.print_line_5
end

def row2_line_6
	month4 = Cal.new(4, year)
	month5 = Cal.new(5, year)
	month6 = Cal.new(6, year)
	month4.print_line_6.chomp + "  " + month5.print_line_6.chomp + "  " + month6.print_line_6
end

def row_2
	row_2_headers + row_week_heads + row2_line_1 + row2_line_2 + row2_line_3 + row2_line_4 + row2_line_5 + row2_line_6
end

def row3_line_1
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_1.chomp + "  " + month8.print_line_1.chomp + "  " + month9.print_line_1
end

def row3_line_2
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_2.chomp + "  " + month8.print_line_2.chomp + "  " + month9.print_line_2
end

def row3_line_3
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_3.chomp + "  " + month8.print_line_3.chomp + "  " + month9.print_line_3
end

def row3_line_4
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_4.chomp + "  " + month8.print_line_4.chomp + "  " + month9.print_line_4
end

def row3_line_5
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_5.chomp + "  " + month8.print_line_5.chomp + "  " + month9.print_line_5
end

def row3_line_6
	month7 = Cal.new(7, year)
	month8 = Cal.new(8, year)
	month9 = Cal.new(9, year)
	month7.print_line_6.chomp + "  " + month8.print_line_6.chomp + "  " + month9.print_line_6
end

def row_3
	row_3_headers + row_week_heads + row3_line_1 + row2_line_2 + row3_line_3 + row3_line_4 + row3_line_5 + row3_line_6
end

def row4_line_1
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_1.chomp + "  " + month11.print_line_1.chomp + "  " + month12.print_line_1
end

def row4_line_2
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_2.chomp + "  " + month11.print_line_2.chomp + "  " + month12.print_line_2
end

def row4_line_3
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_3.chomp + "  " + month11.print_line_3.chomp + "  " + month12.print_line_3
end

def row4_line_4
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_4.chomp + "  " + month11.print_line_4.chomp + "  " + month12.print_line_4
end

def row4_line_5
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_5.chomp + "  " + month11.print_line_5.chomp + "  " + month12.print_line_5
end

def row4_line_6
	month10 = Cal.new(10, year)
	month11 = Cal.new(11, year)
	month12 = Cal.new(12, year)
	month10.print_line_6.chomp + "  " + month11.print_line_6.chomp + "  " + month12.print_line_6
end

def row_4
	row_4_headers + row_week_heads + row4_line_1 + row4_line_2 + row4_line_3 + row4_line_4 + row4_line_5 + row4_line_6
end

def print_year
	row_1 + row_2 + row_3 + row_4
end

end