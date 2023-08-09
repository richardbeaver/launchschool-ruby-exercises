# List of Digits

# Write a method that takes one argument, a positive integer, and returns
# a list of the digits in the number.

# Examples:
digit_list(12345) == [1, 2, 3, 4, 5] # => true
digit_list(7) == [7] # => true
digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
digit_list(444) == [4, 4, 4] # => true

# ==============================================

# 1.
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# 2. Taking last digit one at a time and prepending to a result list
def digit_list(number)
  digits = []

  loop do
    number, last_digit = number.divmod(10)
    digits.unshift(last_digit)
    break if number.zero?
  end

  digits
end
