# Convert a String to a Number!

# The String#to_i method converts a string of numeric characters (including
# an optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor ( Integer() ) behave similarly. In this exercise, you will
# create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to
# convert a string to a number, such as String#to_i, Integer(), etc. Your
# method should do this the old-fashioned way and calculate the result by
# analyzing the characters in the string.

# Examples
string_to_integer('4321') == 4321
string_to_integer('570') == 570

# ==============================================

=begin

input => string of digits
output => number conversion of input string

- All input numbers will be numeric

Getting power of 10
- Ex: 5 char string
- index 0 => 10^4
- index 1 => 10^3
- index 2 => 10^2
- Power of 10 = string length - idx - 1

# 1.
- Create a hash to map each digit string to its numeric value
- Create an array of each character converted to its numeric digit
- Create a sum, starting at 0
- For each character, multiply by corresponding power of 10 and add to sum

# 2.
- Use `String#ord` and `String#codepoints` methods to get array of each
  character's numeric value => get its own codepoint and subtract the codepoint
  of 0 from it
- Multiply each by their power of 10 and get sum

=end

##

# 1.

# Hash literal, mapping digit characters to numeric values
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}.freeze

# Creating the hash programmatically:
DIGITS_2 = (0..9).each_with_object({}) do |num, hash|
  hash[num.to_s] = num
end.freeze

def string_to_integer(num_string)
  numeric_values = num_string.chars.map.with_index do |char, idx|
    power_of_ten = num_string.length - idx - 1
    DIGITS[char] * (10**power_of_ten)
  end

  numeric_values.sum
end

##

# 2.
def string_to_integer(num_string)
  zero_codepoint = '0'.ord
  digits = num_string.codepoints.map { |codepoint| codepoint - zero_codepoint }

  numeric_values = digits.map.with_index do |digit, idx|
    power_of_ten = digits.length - idx - 1
    digit * (10**power_of_ten)
  end

  numeric_values.sum
end
