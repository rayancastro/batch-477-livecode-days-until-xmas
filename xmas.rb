require 'date'

def days_until_xmas(someday = Date.today)
  # Define xmas_date for someday
  xmas_date = Date.new(someday.year, 12, 25)

  # Check if the date is greater than 25 december of this year
  # if it is +1 to xmas year
  xmas_date = xmas_date.next_year if someday > xmas_date

  (xmas_date - someday).to_i
end






# days_until_xmas -> It must return an Integer
puts "It must return an Integer"
puts days_until_xmas().class == Integer

puts "It must return the right number of days"
puts days_until_xmas() == 88
# days_until_xmas -> It must return the right number of days
# until xmas (88)
puts "should be 1 day until xmas for the 24/12/2022"
puts days_until_xmas(Date.new(2022,12,24)) == 1


puts "should be 364 days until xmas for the 26/12/2022"
puts days_until_xmas(Date.new(2022,12,26)) == 364

puts "#{days_until_xmas(Date.new(2022,12,26))} days until xmas!!!!!"
