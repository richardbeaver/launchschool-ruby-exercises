# ASCII String Value

# Write a method that determines and returns the ASCII string value of a
# string that is passed in as an argument. The ASCII string value is the sum
# of the ASCII values of every character in the string. (You may use
# String#ord to determine the ASCII value of a character.)

# Examples
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# ==============================================

=begin

input: a string
output: sum of ASCII values of each character in input string

# 1.
- Combine the ASCII value of each character with a `sum` variable starting at
  `0`

# 2.
- Map an array of input string characters to their ASCII values and sum the
  elements of the resulting array

=end

# 1.
def ascii_value(string)
  string.chars.reduce(0) do |sum, char|
    sum + char.ord
  end
end

# 2.
def ascii_value(string)
  # Could use `map` on the array of characters
  string.chars.map(&:ord).sum

  # Or just use the built-in `codepoints` method to convert each character
  string.codepoints.sum
end
