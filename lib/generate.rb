require "./cal"
require "./year"

if ARGV[0].length < 3
	month1 = Cal.new(ARGV[0], ARGV[1])
	puts month1.print_all

else 
	year1 = Year.new(ARGV[0])
	puts year1.print_year
end