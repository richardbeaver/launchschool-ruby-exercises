# Odd

# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

# You are not allowed to use #odd? or #even? in your solution.

# Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# ==============================================

def is_odd?(number)
  number % 2 == 1
end
