# Convert a Signed Number to a String!

# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# `integer_to_string` from the previous exercise.

# Examples
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# ==============================================

=begin

We want to be sure we are not performing modulo operations involving negative
numbers, as this will cause different results than is expected with only
non-negative numbers.

This is why, when the input is negative, we want to pass the positive
of the value to the `integer_to_string` helper method, which uses modulo.

In our second test case, if we do not negate that negative input before
passing it to `integer_to_string`, the loop becomes an infinite loop.

=end

DIGITS = %w[0 1 2 3 4 5 6 7 8 9].freeze

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then integer_to_string(-number).prepend '-'
  when 1 then integer_to_string(number).prepend '+'
  else integer_to_string(number)
  end
end

##

def integer_to_string(number)
  result = ''

  loop do
    number, last_digit = number.divmod(10)
    result.prepend(DIGITS[last_digit])
    break if number.zero?
  end

  result
end
