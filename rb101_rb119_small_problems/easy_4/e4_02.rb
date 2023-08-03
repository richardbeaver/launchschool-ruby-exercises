# What Century is That?

# Write a method that takes a year as input and returns the century. The
# return value should be a string that begins with the century number, and
# ends with st , nd , rd , or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# ==============================================

# Rounding up to nearest 100
# Then all but last 2 digits, with appropriate suffix

def century(year)
  century = round_up_to_hundreds(year) / 100
  century.to_s + century_suffix(century)
end

def round_up_to_hundreds(number)
  # 1. Divide by 100 as a float, take the ceiling, and multiply back by 100
  # (number / 100.0).ceil * 100

  # 2. Use built in `ceil` method, specifying for the result to have 2
  #    trailing zeros
  number.ceil(-2)
end

# All numbers get a "-th" except for: numbers ending in 1, 2, or 3 that do not
# end in 11, 12, or 13
def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)

  case century % 10
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end
