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
  assert_equal "February", month1.monthName
end

def test_04_numDaysInMonth
  month1 = Cal.new(1, 1999)
  assert_equal month1.numDaysInMonth, 31
end

def test_04b_numDaysInMonth
  month1 = Cal.new(4, 1999)
  assert_equal month1.numDaysInMonth, 30
end

def test_05_leapYear_false
  month1 = Cal.new(1, 1999)
  assert_equal month1.leapYear?, false
end

def test_06_leapYear_true_2004
  month1 = Cal.new(1, 2004)
  assert_equal month1.leapYear? , true
end

def test_07_leapYear_true_centurian
  month1 = Cal.new(1, 2000)
  assert_equal month1.leapYear?, true
end

def test_08_daysInFeb_28
  month1 = Cal.new(2, 1985)
  assert_equal month1.daysInFeb?, 28
end

def test_09_daysInFeb_29
  month1 = Cal.new(2, 2004)
  assert_equal month1.daysInFeb? , 29
end

def test_10_zeller
  month1 = Cal.new(9, 2012)
  assert_equal month1.firstDay?, "Saturday"
end

def test_11_zeller_2
  month1 = Cal.new(5, 2012)
  assert_equal month1.firstDay?, "Tuesday"
end

def test_12_zeller_Jan
  month1 = Cal.new(1, 2012)
  assert_equal month1.firstDay?, "Sunday"
end

def test_13_zeller_feb
  month1 = Cal.new(2, 2012)
  assert_equal month1.firstDay?, "Wednesday"
end

end
