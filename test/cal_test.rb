require 'test/unit'
require './lib/cal'

class CalTest < Test::Unit::TestCase

  def test_01_month_stores_month
    month1 = Cal.new(2, 1999)
        assert_equal(2, month1.month)
  end

def test_02_month_stores_year
  month1 = Cal.new(2, 1999)
  assert_equal(1999, month1.year)
end

def test_03_month_name
  month1 = Cal.new(2, 1999)
  assert_equal "February", month1.month_name
end

def test_04_numDaysInMonth
  month1 = Cal.new(1, 1999)
  assert_equal month1.number_days_in_month, 31
end

def test_04b_numDaysInMonth
  month1 = Cal.new(4, 1999)
  assert_equal month1.number_days_in_month, 30
end

def test_05_leapYear_false
  month1 = Cal.new(1, 1999)
  assert_equal month1.leap_year?, false
end

def test_06_leapYear_true_2004
  month1 = Cal.new(1, 2004)
  assert_equal month1.leap_year?, true
end

def test_07_leapYear_true_centurian
  month1 = Cal.new(1, 2000)
  assert_equal month1.leap_year?, true
end

def test_08_daysInFeb_28
  month1 = Cal.new(2, 1985)
  assert_equal month1.days_in_feb, 28
end

def test_09_daysInFeb_29
  month1 = Cal.new(2, 2004)
  assert_equal month1.days_in_feb, 29
end

def test_10_zeller
  month1 = Cal.new(9, 2012)
  assert_equal month1.first_day, 0
end

def test_11_zeller_2
  month1 = Cal.new(5, 2012)
  assert_equal month1.first_day, 3
end

def test_12_zeller_Jan
  month1 = Cal.new(1, 2012)
  assert_equal month1.first_day, 1
end

def test_13_zeller_feb
  month1 = Cal.new(2, 2012)
  assert_equal month1.first_day, 4
end

def test_14_print_headers
  month1 = Cal.new(2, 2012)
  expected = """
     February 2012
Su Mo Tu We Th Fr Sa
"""
assert_equal month1.print_headers, expected
end

def test_15_print_line_1
  month1 = Cal.new(2, 2012)
  expected = """          1  2  3  4
"""
assert_equal month1.print_line_1, expected
end

def test_16_print_line_2
  month1 = Cal.new(2, 2012)
  expected = """ 5  6  7  8  9 10 11
"""
assert_equal month1.print_line_2, expected
end

def test_17_print_line_3
  month1 = Cal.new(2, 2012)
  expected = """12 13 14 15 16 17 18
"""
assert_equal month1.print_line_3, expected
end

def test_18_print_line_4
  month1 = Cal.new(2, 2012)
  expected = """19 20 21 22 23 24 25
"""
assert_equal month1.print_line_4, expected
end

def test_20_print_line_5
  month1 = Cal.new(2, 2012)
  expected = """26 27 28 29
"""
assert_equal month1.print_line_5, expected
end

def test_21_print_all
  month1 = Cal.new(2, 2012)
  expected = """
     February 2012
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29
                    
"""
assert_equal month1.print_all, expected
end

def test_22_print_May_headers
  month1 = Cal.new(5, 2012)
  expected = """
     May 2012
Su Mo Tu We Th Fr Sa
"""
assert_equal month1.print_headers , expected
end

def test_23_print_May_line_1
  month1 = Cal.new(5, 2012)
  expected = """       1  2  3  4  5
"""
assert_equal month1.print_line_1 , expected
end

def test_24_print_May_line_2
  month1 = Cal.new(5, 2012)
  expected = """ 6  7  8  9 10 11 12
"""
assert_equal month1.print_line_2 , expected
end

def test_25_print_may_line_3
  month1 = Cal.new(5, 2012)
  expected ="""13 14 15 16 17 18 19
"""
assert_equal month1.print_line_3 , expected
end

def test_26_print_may_line_4
  month1 = Cal.new(5, 2012)
  expected = """20 21 22 23 24 25 26
"""
assert_equal month1.print_line_4 , expected
end

def test_27_print_may_line_5
  month1 = Cal.new(5, 2012)
  expected = """27 28 29 30 31
"""
assert_equal month1.print_line_5 , expected
end

def test_28_print_may_all
  month1 = Cal.new(5, 2012)
  expected = """
     May 2012
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30 31
                    
"""
assert_equal month1.print_all , expected
end

def test_29_print_sept_headers
  month1= Cal.new(9, 2012)
  expected = """
     September 2012
Su Mo Tu We Th Fr Sa
"""    
  assert_equal month1.print_headers , expected
end

def test_30_print_sept_line_1
  month1= Cal.new(9, 2012)
  expected = """                   1
"""
  assert_equal month1.print_line_1 , expected
  end

def test_31_print_sept_line_2
  month1=Cal.new(9, 2012)
  expected = """ 2  3  4  5  6  7  8
"""
 assert_equal month1.print_line_2 , expected
end

def test_32_print_sept_line_3
  month1=Cal.new(9, 2012)
  expected = """ 9 10 11 12 13 14 15
"""
  assert_equal month1.print_line_3 , expected
  end

def test_33_print_sept_line_4
  month1=Cal.new(9, 2012)
  expected = """16 17 18 19 20 21 22
"""
  assert_equal month1.print_line_4 , expected
  end

def test_34_print_sept_line_5
  month1 = Cal.new(9, 2012)
  expected = """23 24 25 26 27 28 29
"""
  assert_equal month1.print_line_5 , expected
end

def test_35_print_sept_all
  month1 = Cal.new(9, 2012)
  expected = """
     September 2012
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30                     
"""
  assert_equal month1.print_all  , expected
end

def test_36_print_feb_2015_headers
  month1 = Cal.new(2, 2015)
  expected = """
     February 2015
Su Mo Tu We Th Fr Sa
"""
  assert_equal month1.print_headers , expected
end

def test_37_print_feb_2015_line_1
  month1 = Cal.new(2, 2015)
  expected = """ 1  2  3  4  5  6  7
"""
  assert_equal month1.print_line_1 , expected
end

def test_38_print_feb_2015_line_2
  month1 = Cal.new(2, 2015)
  expected = """ 8  9 10 11 12 13 14
"""
  assert_equal month1.print_line_2 , expected
end

def test_39_print_feb_2015_line_3
  month1 = Cal.new(2, 2015)
  expected = """15 16 17 18 19 20 21
"""
  assert_equal month1.print_line_3 , expected
end

def test_40_print_feb_2015_line_4
  month1 = Cal.new(2, 2015)
  expected = """22 23 24 25 26 27 28
"""
  assert_equal month1.print_line_4 , expected
end

def test_41_print_feb_2015_line_5
  month1 = Cal.new(2, 2015)
  expected = "                    \n"
  assert_equal month1.print_line_5 , expected
end

def test_42_print_feb_2015_all
  month1 = Cal.new(2, 2015)
  expected = """
     February 2015
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
                    
                    
"""
  assert_equal month1.print_all , expected
end 
end